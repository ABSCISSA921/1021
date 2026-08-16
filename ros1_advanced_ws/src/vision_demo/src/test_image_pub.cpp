// test_image_pub:无摄像头时的测试图像源
//
// 生成 640x480 的测试画面:一个按李萨如轨迹运动的红色圆 + 背景网格,
// 以 ~30Hz 发布到 /test_image,用于离线验证视觉算法。
//
// 运行:
//   rosrun vision_demo test_image_pub

#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>

#include <opencv2/opencv.hpp>

int main(int argc, char** argv)
{
  ros::init(argc, argv, "test_image_pub");
  ros::NodeHandle nh;
  image_transport::ImageTransport it(nh);
  image_transport::Publisher pub = it.advertise("/test_image", 1);

  ros::Rate rate(30.0);
  double t = 0.0;

  while (ros::ok())
  {
    // 灰色背景 + 网格
    cv::Mat frame(480, 640, CV_8UC3, cv::Scalar(40, 40, 40));
    for (int x = 0; x < frame.cols; x += 40)
      cv::line(frame, cv::Point(x, 0), cv::Point(x, frame.rows), cv::Scalar(80, 80, 80), 1);
    for (int y = 0; y < frame.rows; y += 40)
      cv::line(frame, cv::Point(0, y), cv::Point(frame.cols, y), cv::Scalar(80, 80, 80), 1);

    // 李萨如轨迹的红色圆
    double cx = frame.cols / 2.0 + 220.0 * std::sin(0.6 * t);
    double cy = frame.rows / 2.0 + 140.0 * std::sin(0.9 * t + 1.3);
    cv::circle(frame, cv::Point(static_cast<int>(cx), static_cast<int>(cy)),
               30, cv::Scalar(0, 0, 255), -1);

    sensor_msgs::ImagePtr msg =
        cv_bridge::CvImage(std_msgs::Header(), sensor_msgs::image_encodings::BGR8, frame).toImageMsg();
    pub.publish(msg);

    t += 1.0 / 30.0;
    ros::spinOnce();
    rate.sleep();
  }
  return 0;
}
