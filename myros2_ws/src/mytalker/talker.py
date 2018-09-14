#!/usr/bin/python3

import sys

import rclpy
from rclpy.node import Node

from std_msgs.msg import String

class Talker(Node):

    def __init__(self):
        super().__init__('mytalker')
        self.publisher_ = self.create_publisher(String, 'chatter')
        timer_period = 1.0
        self.timer = self.create_timer(timer_period, self.timer_callback)
        self.i = 0

    def timer_callback(self):
        msg = String()
        msg.data = 'Hello World: %d' % self.i
        print('Publishing: "%s"' % msg.data)
        self.publisher_.publish(msg)
        self.i += 1

def main(args=None):
    if args is None:
        args = sys.argv

    rclpy.init(args=args)

    node = Talker()

    rclpy.spin(node)

    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()
