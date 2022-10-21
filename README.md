# following_person

## Prepare
### A device supported GPU

### A zed2 camera

## Previous Work
### 1. [Install ROS Noetic](https://www.ros.org/blog/getting-started/)

### 2. [Install Zed SDK](https://www.stereolabs.com/developers/release/)

## Environment Setup
### 1. Create ROS workspace

> [ROS tutorial](https://ithelp.ithome.com.tw/articles/10200551)
~~~
$ mkdir ros_ws
$ cd ros_ws
$ mkdir src
$ catkin_make
~~~

### 2. Create package
~~~
$ cd ros_ws/src
$ catkin_create_pkg [pkg_name] rospy std_msgs 
~~~

## Install

### 1. Git clone yolov5-deepsort
> [DeepSORT_YOLOv5_Pytorch](https://github.com/HowieMa/DeepSORT_YOLOv5_Pytorch)
~~~
$ cd ~/ros_ws/src/pkg_name/src
$ git clone https://github.com/HowieMa/DeepSORT_YOLOv5_Pytorch.git
~~~

### 2. Git clone zed_wrapper
> [Getting Started with ROS and ZED](https://www.stereolabs.com/docs/ros/)
~~~
$ cd ~/ros_ws/src
$ git clone --recursive https://github.com/stereolabs/zed-ros-wrapper.git
$ cd ../
$ rosdep install --from-paths src --ignore-src -r -y
$ catkin_make -DCMAKE_BUILD_TYPE=Release
$ source ./devel/setup.bash
~~~

## Run
~~~
$ cd ~/ros_ws
$ roslaunch zed_wrapper zed2.launch
~~~

~~~
$ cd ~/ros_ws/src/[pkg_name]/src
$ rosrun [pkg_name] yolo_deepsort_node.py
~~~

~~~
$ cd ~/ros_ws
$ rosrun [pkg_name] controller.py
~~~





