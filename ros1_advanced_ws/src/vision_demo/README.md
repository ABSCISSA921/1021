# vision_demo · ROS 视觉入门示例包

用「摄像头 → cv_bridge → OpenCV → 发布结果」的完整链路,演示 ROS 视觉节点的标准写法。教程见 [docs/tutorials/06-视觉处理.md](../../../docs/tutorials/06-视觉处理.md)。

## 节点

| 节点 | 功能 |
| --- | --- |
| `red_detector` | 订阅图像,HSV 检测红色物体,画框并发布结果 |
| `test_image_pub` | 无摄像头时的测试图像源(红色圆按李萨如轨迹运动) |

## 运行

```bash
# 方式 1:真实/虚拟摄像头
roslaunch usb_cam usb_cam-test.launch
rosrun vision_demo red_detector ~image:=/usb_cam/image_raw

# 方式 2:无摄像头
rosrun vision_demo test_image_pub
rosrun vision_demo red_detector ~image:=/test_image

# 查看结果(任选)
rqt_image_view /red_detector/result
rostopic echo /red_detector/detections
rqt_plot /red_detector/proc_time_ms/data
```

## 话题

| 方向 | 话题 | 类型 | 说明 |
| --- | --- | --- | --- |
| 订阅 | `~image` | `sensor_msgs/Image` | 输入图像,启动时用 `~image:=` remap |
| 发布 | `~result` | `sensor_msgs/Image` | 画框后的结果图像 |
| 发布 | `~detections` | `std_msgs/String` | 检测结果(目标中心/面积或 no target) |
| 发布 | `~proc_time_ms` | `std_msgs/Float64` | 单帧处理耗时(毫秒) |

`test_image_pub` 发布 `/test_image`(`sensor_msgs/Image`)。

## 参数(`red_detector` 私有参数,启动时 `_key:=value` 覆盖)

| 参数 | 默认 | 说明 |
| --- | --- | --- |
| `h_min1` / `h_max1` | 0 / 10 | 红色 HSV 第一段色调区间 |
| `h_min2` / `h_max2` | 160 / 180 | 红色 HSV 第二段色调区间(H 环绕 0/180) |
| `s_min` / `s_max` | 100 / 255 | 饱和度区间 |
| `v_min` / `v_max` | 100 / 255 | 明度区间 |
| `min_area` | 100.0 | 最小轮廓面积(过滤噪点) |

## 代码导读

1. **cv_bridge 互转**:`toCvShare`(ROS→Mat,零拷贝)/ `CvImage(...).toImageMsg()`(Mat→ROS);
2. **HSV 分割**:红色在 H 通道上跨 0/180 两端,需两段 `inRange` 取并集——这是颜色检测最常见的坑;
3. **image_transport**:订阅/发布都走 `ImageTransport`,自动获得压缩传输能力;
4. **耗时话题**:`proc_time_ms` 反映算法实时性,视觉闭环的频率上限 = 1000/耗时。

## 练习任务

1. 把 8 个 HSV 阈值改成 dynamic_reconfigure 参数,用 `rqt_reconfigure` 在线调;
2. 检测结果驱动底盘:目标中心偏左 → `angular.z > 0`,实现「追红色物体」;
3. 换成 BlobDetector / 霍夫圆检测,对比不同方法的鲁棒性。
