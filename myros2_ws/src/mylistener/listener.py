#!/usr/bin/python3

import sys

import rclpy
from rclpy.node import Node

from std_msgs.msg import String

class Listener(Node):

    def __init__(self):
        super().__init__('mylistener')
        self.subscription = self.create_subscription(
                String, 
                'chatter',
                self.listener_callback)
        self.subscription # prevent unused variable warning
    
    def listener_callback(self, msg):
        self.get_logger().info('I heard: "%s"' % msg.data)

def main(args=None):
    if args is None:
        args = sys.argv

    rclpy.init(args=args)

    node = Listener()

    rclpy.spin(node)

    # Destroy the node explicitly
    # (optional - otherwise it will be done automatically
    # when the garbage collector destroys the node object)
    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()
