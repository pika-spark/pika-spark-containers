from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='ros2_dynamixel_bridge',
            namespace='l3xz',
            executable='ros2_dynamixel_bridge_node',
            name='ros2_dynamixel_bridge',
            output='screen',
            emulate_tty=True,
            parameters=[
                {'serial_port' : '/dev/ttymxc1'},
                {'serial_port_baudrate': 2*1000*1000},
                {'required_node_id_list': [7, 8]},
                {'check_required_node_id_list': True},
            ],
            remappings=[
                ('/dynamixel/servo_7/angle/actual',            '/l3xz/head/pan/angle/actual'),
                ('/dynamixel/servo_7/angle/target',            '/l3xz/head/pan/angle/target'),
                ('/dynamixel/servo_7/angular_velocity/target', '/l3xz/head/pan/angular_velocity/target'),
                ('/dynamixel/servo_7/mode/set',                '/l3xz/head/pan/mode/set'),
                ('/dynamixel/servo_8/angle/actual',            '/l3xz/head/tilt/angle/actual'),
                ('/dynamixel/servo_8/angle/target',            '/l3xz/head/tilt/angle/target'),
                ('/dynamixel/servo_8/angular_velocity/target', '/l3xz/head/tilt/angular_velocity/target'),
                ('/dynamixel/servo_8/mode/set',                '/l3xz/head/tilt/mode/set'),
            ],
        )
    ])
