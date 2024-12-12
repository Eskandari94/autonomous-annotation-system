#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
from openai import OpenAI
from mh_hazard.srv import LLMText, LLMImage, LLMTextResponse
import base64
import json

class Vector3:
    def __init__(self, x=0.0, y=0.0, z=0.0):
        self.x = x
        self.y = y
        self.z = z

    def __repr__(self):
        return f"x={self.x}, y={self.y}, z={self.z}"

class LLMQuery:
    def __init__(self, image="", position=None, localAddress=""):
        self.imageString = image
        self.position = position if position is not None else Vector3()
        self.localAddress = localAddress

    def __repr__(self):
        return f"ImageData(image='{self.imageString}', position={self.position}, localAddress={self.localAddress})"

def read_json(json_string):
    data = json.loads(json_string)
    
    image = data.get('image', '')
    position_data = data.get('position', {})
    position = Vector3(
        x=position_data.get('x', 0.0),
        y=position_data.get('y', 0.0),
        z=position_data.get('z', 0.0)
    )
    localAddress = data.get('localAddress', 'NULL_ADDRESS')
    return LLMQuery(image=image, position=position, localAddress=localAddress)


class GPTServ:


    def chat_complete(self, statement):
        #image_path = "/home/mheskandari/catkin_ws/src/mh_hazard/sample.png"
        data = LLMQuery()
        data = read_json(statement)
        # Convert the image to a base64 string
        # with open(image_path, "rb") as image_file:
        #     base64_image = base64.b64encode(image_file.read()).decode('utf-8')

        # Construct the message payload
        
        assistant_prompt = (
   "I am in a high-risk environment with potential hazardous items and situations. "
"I need you to point out any unusual or potentially hazardous items you see in this image in a single JSON object as an object from the HazardReport class provided below. Provide only one object of the HazardReport class in JSON format populated as commanded below."

"public class HazardReport"
"{"
    "public int hazards_found;"
    "public string message;"
    "public Vector3 coordinates;"
    "public string screenshotLocalAddress;"
    "public bool generatePOI;"
"}"

"Instructions:"
"1. Populate 'hazards_found' with the count of hazards found."
"2. Populate 'message' with hazard descriptions, starting with each hazard's name in bold (using <b>name</b>), followed by a cautious note explaining why it is dangerous and what safety measures should be taken. Begin each hazard on a new line, using \\n to create the line break."
"3. If at least one hazard is identified, set 'generatePOI' to true, otherwise false."
f"4. Populate 'coordinates' with the location provided in {data.position}."
f"5. Populate 'screenshotLocalAddress' with the path {data.localAddress}."

"Response only a single JSON object with no extra words."
)

        system_role="You are an expert safety inspector specializing in hazard identification. Your primary role is to accurately and thoroughly identify potentially hazardous items in various environments. You must provide clear, detailed explanations of why an item might be hazardous, suggest appropriate safety measures to mitigate the risks, and ensure the highest standards of safety are maintained. Please approach each scenario with the utmost attention to detail and rigor. Now we begin the task of identifying potentially hazardous items. Wait for the next prompt before answering."
        
        messages = []
        messages.append({"role": "system", 
                       "content": system_role})
        messages.append({"role": "assistant", 
                       "content" : 'Understood. Waiting for next input.'})
        
        messages.append({"role": "user", 
                       "content": assistant_prompt})
        messages.append({"role": "assistant", 
                       "content" : 'Understood. Waiting for next input.'})
        
        messages.append({
                "role": "user",
                "content": [
                    {
                        "type": "text",
                        "text": "is there anything unusafe about this picture?"
                    },
                    {
                        "type": "image_url",
                        "image_url": {
                            "url": f"data:image/png;base64,{data.imageString}"
                        }
                    }
                ]
            })
        
        print("Sending query")
        response = self.client.chat.completions.create(
                model="gpt-4o",
                messages=messages,
                temperature=0.0,
                max_tokens=1000,
                top_p=0.5,
                frequency_penalty=0.0,
                presence_penalty=0.0)
        text = response.choices[0].message.content
        return text
    
    def process_text(self, query):
        statement = query.text
        text = self.chat_complete(statement)
        print(text)
        resp = LLMTextResponse()
        resp.text = text
        return resp
    
    
    def process_image(self, query):
        return query

    def __init__(self):
        self.stop = False
        rospy.init_node('gpt_service_node')
        key_filename = "/home/mheskandari/ai.key"
        with open(key_filename, "rb") as key_file:
            key = key_file.read().decode("utf-8")
        self.client = OpenAI(
            api_key = key,
        )
        print("API key is set.")
        self.llm_text_serv = rospy.Service("/llm_text", LLMText, self.process_text)
        rospy.spin()

    
if __name__ == '__main__':
    gpt = GPTServ()