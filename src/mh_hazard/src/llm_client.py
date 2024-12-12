#!/usr/bin/env python3
import rospy
import numpy as np
import cv2
from cv_bridge import CvBridge
from std_msgs.msg import String
from sensor_msgs.msg import Image
from mh_hazard.msg import Transcription
from mh_hazard.srv import LLMImage, LLMText
from mh_hazard.srv import TTS
from std_msgs.msg import Float32MultiArray

BLUE = (255, 0, 0)
GREEN = (0, 255, 0)
RED = (0, 0, 255)
PURPLE = (255, 0, 128)

def display_img(img):
    # show image
    cv2.imshow('image', img)
    cv2.waitKey(0)
    cv2.destroyAllWindows()

class TestLLM:
    def __init__(self):
        rospy.init_node('test_llm')
        self.cvbridge = CvBridge()
        self.frame_counter = 0  

        self.robot_speech_pub = rospy.Publisher('/dummy_topic', String, queue_size=10)
        
        #rospy.wait_for_service('llm_image')
        #self.llm_img_serv = rospy.ServiceProxy('llm_image', LLMImage)

        rospy.wait_for_service('llm_text')
        self.llm_text_serv = rospy.ServiceProxy('llm_text', LLMText)

        rgb_image_topic = "/unity/camera/rgb/compressed"#"/unity/camera/left/rgb/image_raw"
        query_topic = "/unity_query"

        #rospy.loginfo(f"rgb_image_topic: {rgb_image_topic}")
        rospy.loginfo(f"query_topic: {query_topic}")

        text_sub = rospy.Subscriber(query_topic, String, self.text_callback)
        #image_sub = rospy.Subscriber(rgb_image_topic, Image, self.image_callback)  
        rospy.spin()

    def image_callback(self, msg):  
        self.frame_counter += 1  
        if self.frame_counter % 10 == 0:  
            rospy.loginfo("Processing frame")  
            cv_image = self.cvbridge.imgmsg_to_cv2(msg, "bgr8")  
            self.process_image(cv_image)  

    def process_image(self, cv_image):  
        # Encode image to base64  
        _, buffer = cv2.imencode('.jpg', cv_image)  
        jpg_as_text = buffer.tobytes()  

        # Send the image to ChatGPT and get a description  
        #rospy.wait_for_service('llm_image') 
        try:  
            resp = self.llm_img_serv(jpg_as_text)  
            rospy.loginfo(f"Received description: {resp.description}")  
            self.robot_speech_pub.publish(resp.description)  
        except rospy.ServiceException as e:  
            rospy.logerr(f"Service call failed: {e}")  

    def text_callback(self, transcript):
        transcript = transcript.data
        rospy.loginfo(f"Got transcript: '{transcript}'")

        resp = self.llm_text_serv(transcript)
        rospy.loginfo(resp)

        self.robot_speech_pub.publish(resp.text)

if __name__ == '__main__':
    test = TestLLM()