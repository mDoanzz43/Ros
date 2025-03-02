#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
import sys, select, termios, tty

settings = termios.tcgetattr(sys.stdin)
move_bindings = {
    'w': (1, 0), 's': (-1, 0),
    'a': (0, 1), 'd': (0, -1),
    'q': (0, 0)  # Stop
}

def get_key():
    tty.setraw(sys.stdin.fileno())
    select.select([sys.stdin], [], [], 0)
    key = sys.stdin.read(1)
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

def control_turtle():
    rospy.init_node('keyboard_control')
    pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=1)
    
    speed = 2.0
    twist = Twist()

    print("Nhấn W/S để tiến/lùi, A/D để quay, Q để dừng")
    while not rospy.is_shutdown():
        key = get_key()
        if key in move_bindings.keys():
            twist.linear.x = move_bindings[key][0] * speed
            twist.angular.z = move_bindings[key][1] * speed
            pub.publish(twist)
        if key == 'q':
            break

if __name__ == '__main__':
    try:
        control_turtle()
    except rospy.ROSInterruptException:
        pass
