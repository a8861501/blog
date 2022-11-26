
# Tracking System

## Prepare

### A GPU  supported device 

### A zed2 camera

### A chassis

***
## Previous Work

### 1. [Install ROS Noetic](https://www.ros.org/blog/getting-started/)

### 2. [Install Zed SDK](https://www.stereolabs.com/developers/release/)
***
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
***
## Install

### 1. Git clone yolov5-deepsort
> [DeepSORT_YOLOv5_Pytorch](https://github.com/HowieMa/DeepSORT_YOLOv5_Pytorch)
```cmd
$ cd ~/ros_ws/src/pkg_name/src
$ git clone https://github.com/HowieMa/DeepSORT_YOLOv5_Pytorch.git
$ 把載下來的資料夾裡面的東西全部移到src,刪掉剩下空的資料夾。
```

### 2. Git clone zed_wrapper
> [Getting Started with ROS and ZED](https://www.stereolabs.com/docs/ros/)
```cmd
$ cd ~/ros_ws/src
$ git clone --recursive https://github.com/stereolabs/zed-ros-wrapper.git
$ cd ../
$ rosdep install --from-paths src --ignore-src -r -y
$ catkin_make -DCMAKE_BUILD_TYPE=Release
$ source ./devel/setup.bash
```
## Build
### 1.Modify yolov5-deepsort(main.py --> *rename main.py to yolo_deepsort_node.py*)
> import 
```python
#!/usr/bin/env python3
import rospy
from cv_bridge import CvBridge,CvBridgeError
from sensor_msgs.msg import Image
from following_person.msg import rect_msg
```
> __ init __
```python
if args.cam != -1:
    print("Using webcam " + str(args.cam))
    self.vdo = cv2.VideoCapture(args.cam)
    sub = rospy.Subscriber('/zed2/zed_node/left/image_rect_color',Image,self.callback)
```
```python
self.bridge = CvBridge()
self.pub = rospy.Publisher('tracking_data',rect_msg,queue_size=20)
```
> __ enter __
```python
if self.args.cam != -1:
    print('Camera ...')
    # ret, frame = self.vdo.read()
    # assert ret, "Error: Camera error"
    self.im_width = 640
    self.im_height = 360
```
```python
#  if self.args.save_path:
#     os.makedirs(self.args.save_path, exist_ok=True)
#     # path of saved video and results
#     self.save_video_path = os.path.join(self.args.save_path, "results.mp4")

#     # create video writer
#     fourcc = cv2.VideoWriter_fourcc(*self.args.fourcc)
#     self.writer = cv2.VideoWriter(self.save_video_path, fourcc,
#                                   self.vdo.get(cv2.CAP_PROP_FPS), (self.im_width, self.im_height))
#     print('Done. Create output file ', self.save_video_path)

# if self.args.save_txt:
#     os.makedirs(self.args.save_txt, exist_ok=True)
```
> create callback
```python
def callback(self,data):
    try:
        cv_image=self.bridge.imgmsg_to_cv2(data, "bgr8")
        self.run(cv_image)

    except CvBridgeError as e:
        print(e)
```
> __ exit__
```python
# self.vdo.release()
# self.writer.release()
```
> run
```python
def run(self,img0):
msg = rect_msg()
把while移除，縮排回去
# _, img0 = self.vdo.retrieve()
# print('Frame %d Done. YOLO-time:(%.3fs) SORT-time:(%.3fs)' % (idx_frame, yt, st))
# add FPS information on output video
text_scale = max(1, img0.shape[1] // 1600)
cv2.putText(img0, 'frame: %d fps: %.2f ' % (idx_frame, len(avg_fps) / sum(avg_fps)),
        (20, 20 + text_scale), cv2.FONT_HERSHEY_PLAIN, text_scale, (0, 0, 255), thickness=2)
msg.cx = (outputs[0][2] + outputs[0][0]) // 2
msg.cy = (outputs[0][3] + outputs[0][1]) // 2
msg.label = outputs[0][4]
self.pub.publish(msg)
# display on window ******************************
# if self.args.display:
cv2.imshow("test", img0)
if cv2.waitKey(1) == ord('q'):  # q to quit
    cv2.destroyAllWindows()
# save to video file *****************************
# if self.args.save_path:
#     self.writer.write(img0)

# if self.args.save_txt:
#     with open(self.args.save_txt + str(idx_frame).zfill(4) + '.txt', 'a') as f:
#         for i in range(len(outputs)):
#             x1, y1, x2, y2, idx = outputs[i]
#             f.write('{}\t{}\t{}\t{}\t{}\n'.format(x1, y1, x2, y2, idx))
idx_frame += 1
```
> if __ name __ = '__ main __'
```python
parser.add_argument("--camera", action="store", dest="cam", type=int, default="0")
parser.add_argument("--config_deepsort", type=str, default="~/configs/deep_sort.yaml")
with VideoTracker(args) as vdo_trk:
    rospy.init_node('yolo_deepsort_node')
    vdo_trk
    rospy.spin()
```
### 2.Add change_target_server.py
```python
#!/usr/bin/env python3

from following_person.srv import target_srv
import rospy

def changing(req):


    return req.id

def change_target_server():

    rospy.init_node('change_target_node')

    server = rospy.Service('change_target',target_srv,handler=changing)


    rospy.spin()

if __name__ == '__main__':
    change_target_server()
```
### 3.Add control_node.py
```python
#!/usr/bin/env python3

import rospy
import cv2
from cv_bridge import CvBridge, CvBridgeError
import numpy as np

import message_filters

from following_person.msg import rect_msg
from sensor_msgs.msg import Image
from geometry_msgs.msg import Twist

from following_person.srv import target_srv

class driver():
    def __init__(self):
        self.target = 1
        self.missing_time =0
        self.start = 0
        self.count = 0

        self.bridge = CvBridge()

        self.pub = rospy.Publisher('cmd_vel',Twist,queue_size=20)
        self.position_sub = message_filters.Subscriber('tracking_data',rect_msg)
        self.depth_sub = message_filters.Subscriber('/zed2/zed_node/depth/depth_registered',Image)
        ts = message_filters.ApproximateTimeSynchronizer([self.position_sub, self.depth_sub], 20, 0.1, allow_headerless=True)
        ts.registerCallback(self.callback)
    
        rospy.spin()

    def callback(self,position_data,depth_data):
        cx = position_data.cx
        cy = position_data.cy
        id =position_data.label

        # if self.start == 0:
        #     n = input('Press y if you are ready tracking...(Y / y):')
        #     if n == 'y' or n == 'Y' or n == 'yes':
        #         print('Start tracking')
        #         self.start = 1
            
        #     else:
        #         print('Please press y to make sure you are ready !')

        # elif self.start == 1:
        if id == self.target:

            if self.missing_time !=0:
                print('continue following ~')
                self.missing_time = 0

            linear_x = self.linear(cx,cy,depth_data)

            angular_z = self.angular(cx)

            self.publisher(linear_x, angular_z)

        elif id != self.target and self.missing_time <= 50:
            self.missing_time += 1
            if self.missing_time == 1:
                print('missing target...')

        else:
            self.missing_time = 0
            self.client()


    def linear(self,cx,cy,depth_data):

        try:
            depth_image = self.bridge.imgmsg_to_cv2(depth_data, '32FC1')
        except CvBridgeError as e:
            print(e)

        depth_array = np.array(depth_image, dtype=np.float32)
        # depth_array[np.isneginf(depth_array)] = 0.0
        # depth_array[np.isposinf(depth_array)] = 0.0
        depth_array = self.fill_depth_array(depth_array)

        dist = depth_array[cy,cx]

        speed = self.dist_to_speed(dist)

        return speed

    def fill_depth_array(self, depth_array):

        for i in range(depth_array.shape[1]):

            temp_col = depth_array[:,i]

            nan_num = np.count_nonzero(temp_col != temp_col)

            if nan_num != 0:

                temp_not_nan_col = temp_col[temp_col == temp_col]

                temp_col[np.isnan(temp_col)] = temp_not_nan_col.mean()

        return depth_array

    def dist_to_speed(self, dist):
        
        speed = (dist - 0.4) ** 0.5 / 3

        if speed < 0.12:

            speed = 0.0
            
        elif speed >= 0.5:

            speed = 0.5
        # if dist == np.NINF:

        #     speed = 0.0

        # elif dist  == np.inf or np.nan:

        #     speed = 0.3

        # elif dist <= 0.5:
            
        #     speed = 0.0

        # else:

        #     speed = (dist - 0.4) ** 0.5 * 1.2

        return speed

    def angular(self, cx):

        if cx == 320 :

            angle = 0.0

        elif cx > 320:
            angle = -(((cx - 320) / 320) ** 0.5 / 3)
            
        else:
            angle = (((320 - cx) / 320) ** 0.5 / 3)

        return angle

    def publisher(self, linear_x, angular_z):

        msg = Twist()

        msg.linear.x = linear_x
        msg.angular.z = angular_z

        self.pub.publish(msg)

    def client(self):

        rospy.wait_for_service('change_target')

        try:
            new_id = int(input('Enter changing target:'))
            changing_target = rospy.ServiceProxy('change_target',target_srv, persistent=False)
            resp = changing_target(new_id)
            self.target = resp.new_id
            print('continue following with new taget: ',self.target)
            return resp.new_id

        except rospy.ServiceException as e:
            print('Service call failed: %s'%e)


if __name__ == '__main__':

    rospy.init_node('controller_node')

    car = driver()
```
***
### 4.Add message
> Add rect_msg.msg

```cmd
$ cd ros_ws/msd
$ vim rect_msg.msg

int64 cx
int64 cy
int64 label
```
[catkin setting](https://ithelp.ithome.com.tw/articles/10200551)

## Run
```
$ git clone https://github.com/a8861501/following_person.git
$ cd ~/ros_ws
$ catkin_make
```
~~~
$ cd ~/ros_ws
$ roslaunch xpkg_bringup bringup_basic_ctrl.launch
$ roslaunch zed_wrapper zed2.launch
$ rosrun [pkg_name] yolo_deepsort_node.py
$ rosrun [pkg_name] change_target_server.py
$ rosrun [pkg_name] controller.py
~~~





