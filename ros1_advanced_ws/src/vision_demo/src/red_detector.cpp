// red_detector:ROS 视觉入门示例 —— 红色物体检测
//
// 数据流:
//   sensor_msgs/Image (订阅 ~image)
//     -> cv_bridge 转 OpenCV Mat
//     -> HSV 阈值分割 -> 找最大轮廓 -> 画框
//     -> 发布结果图像 (~result) / 检测文字 (~detections) / 处理耗时 (~proc_time_ms)
//
// 运行:
//   rosrun vision_demo red_detector ~image:=/usb_cam/image_raw
//   rosrun vision_demo red_detector ~image:=/test_image      # 配合 test_image_pub

#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <sensor_msgs/Image.h>
#include <std_msgs/String.h>
#include <std_msgs/Float64.h>

#include <opencv2/opencv.hpp>

// HSV 阈值:红色在 H 通道上环绕 0/180,需要两段区间
static int h_min1 = 0, h_max1 = 10;     // 第一段:0~10
static int h_min2 = 160, h_max2 = 180;  // 第二段:160~180
static int s_min = 100, s_max = 255;
static int v_min = 100, v_max = 255;
static double min_area = 100.0;         // 最小轮廓面积(过滤噪点)

image_transport::Publisher result_pub;
ros::Publisher detections_pub;
ros::Publisher proc_time_pub;

void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
  ros::WallTime t0 = ros::WallTime::now();

  try
  {
    // 1. cv_bridge:ROS 消息 -> OpenCV Mat(bgr8,零拷贝共享)
    cv::Mat frame = cv_bridge::toCvShare(msg, sensor_msgs::image_encodings::BGR8)->image;

    // 2. HSV 分割:两段红色区间取并集
    cv::Mat hsv, mask1, mask2, mask;
    cv::cvtColor(frame, hsv, cv::COLOR_BGR2HSV);
    cv::inRange(hsv, cv::Scalar(h_min1, s_min, v_min), cv::Scalar(h_max1, s_max, v_max), mask1);
    cv::inRange(hsv, cv::Scalar(h_min2, s_min, v_min), cv::Scalar(h_max2, s_max, v_max), mask2);
    mask = mask1 | mask2;

    // 3. 形态学开运算去噪
    cv::morphologyEx(mask, mask, cv::MORPH_OPEN,
                     cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(5, 5)));

    // 4. 找最大轮廓并画框
    std::vector<std::vector<cv::Point> > contours;
    cv::findContours(mask, contours, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_SIMPLE);

    std_msgs::String det_msg;
    double max_area = 0.0;
    int best = -1;
    for (size_t i = 0; i < contours.size(); ++i)
    {
      double a = cv::contourArea(contours[i]);
      if (a > max_area)
      {
        max_area = a;
        best = static_cast<int>(i);
      }
    }

    if (best >= 0 && max_area > min_area)
    {
      cv::Rect r = cv::boundingRect(contours[best]);
      cv::rectangle(frame, r, cv::Scalar(0, 255, 0), 2);
      cv::Point center = (r.tl() + r.br()) * 0.5;
      cv::circle(frame, center, 3, cv::Scalar(0, 255, 0), -1);
      det_msg.data = "target " + std::to_string(center.x) + "," + std::to_string(center.y)
                     + " area " + std::to_string(static_cast<int>(max_area));
    }
    else
    {
      det_msg.data = "no target";
    }
    detections_pub.publish(det_msg);

    // 5. 结果发布:OpenCV Mat -> ROS 消息
    sensor_msgs::ImagePtr out_msg =
        cv_bridge::CvImage(std_msgs::Header(), sensor_msgs::image_encodings::BGR8, frame).toImageMsg();
    result_pub.publish(out_msg);

    // 6. 处理耗时(ms):控制闭环频率的参考指标
    std_msgs::Float64 dt_msg;
    dt_msg.data = (ros::WallTime::now() - t0).toSec() * 1000.0;
    proc_time_pub.publish(dt_msg);
  }
  catch (cv_bridge::Exception& e)
  {
    ROS_ERROR("cv_bridge exception: %s", e.what());
  }
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "red_detector");
  ros::NodeHandle nh("~");  // 私有句柄:话题在 /red_detector/ 命名空间下

  // 阈值参数(启动参数覆盖,例如 _h_min1:=5)
  nh.param("h_min1", h_min1, h_min1);
  nh.param("h_max1", h_max1, h_max1);
  nh.param("h_min2", h_min2, h_min2);
  nh.param("h_max2", h_max2, h_max2);
  nh.param("s_min", s_min, s_min);
  nh.param("s_max", s_max, s_max);
  nh.param("v_min", v_min, v_min);
  nh.param("v_max", v_max, v_max);
  nh.param("min_area", min_area, min_area);

  image_transport::ImageTransport it(nh);
  image_transport::Subscriber sub = it.subscribe("image", 1, imageCallback);
  result_pub = it.advertise("result", 1);
  detections_pub = nh.advertise<std_msgs::String>("detections", 10);
  proc_time_pub = nh.advertise<std_msgs::Float64>("proc_time_ms", 10);

  ROS_INFO("red_detector ready. Subscribe: ~image, publish: ~result / ~detections / ~proc_time_ms");
  ros::spin();
  return 0;
}
