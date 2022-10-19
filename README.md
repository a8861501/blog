參考資料：https://www.stereolabs.com/docs/ros/
http://wiki.ros.org/message_filters

1.安裝ROS
2.安裝zed SDK
2.建立ros workspace
3.cd ws/src
4.git clone zed-ros-wrapper
5.git clone yoloV5_deepsort(https://github.com/HowieMa/DeepSORT_YOLOv5_Pytorch)
6.修改 main.py
7.subscibe /zed2/zed_node/left/image_rect_color
8.格式轉成cv2:

try:
        cv_image=self.bridge.imgmsg_to_cv2(data, "bgr8")
except CvBridgeError as e:
        print(e)
        
9.啟用zed object detection
10.zed_depth:https://github.com/stereolabs/zed-ros-wrapper/issues/334
