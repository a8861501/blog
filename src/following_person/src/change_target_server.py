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