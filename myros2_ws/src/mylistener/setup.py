from setuptools import setup

package_name = 'mylistener'

setup(
    name=package_name,
    version='0.5.1',
    packages=[],
    py_modules=[
        'listener'],	
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    author='Kaixian QU',
    author_email='qkx515@gmail.com',
    maintainer='Kaixian QU',
    maintainer_email='qkx515@gmail.com',
    keywords=['ROS'],
    classifiers=[
        'Intended Audience :: Developers',
        'License :: OSI Approved :: Apache Software License',
        'Programming Language :: Python',
        'Topic :: Software Development',
    ],
    description='Examples of minimal publishers using rclpy.',
    license='Apache License, Version 2.0',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'listener = listener:main',
        ],
    },
)

