# CMake generated Testfile for 
# Source directory: /home/qkx515/myros2_ws/src/mytalkercpp
# Build directory: /home/qkx515/myros2_ws/build/mytalkercpp
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cppcheck "/usr/bin/python3" "-u" "/opt/ros/bouncy/share/ament_cmake_test/cmake/run_test.py" "/home/qkx515/myros2_ws/build/mytalkercpp/test_results/mytalkercpp/cppcheck.xunit.xml" "--package-name" "mytalkercpp" "--output-file" "/home/qkx515/myros2_ws/build/mytalkercpp/ament_cppcheck/cppcheck.txt" "--command" "/opt/ros/bouncy/bin/ament_cppcheck" "--xunit-file" "/home/qkx515/myros2_ws/build/mytalkercpp/test_results/mytalkercpp/cppcheck.xunit.xml")
set_tests_properties(cppcheck PROPERTIES  LABELS "cppcheck;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/qkx515/myros2_ws/src/mytalkercpp")
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/bouncy/share/ament_cmake_test/cmake/run_test.py" "/home/qkx515/myros2_ws/build/mytalkercpp/test_results/mytalkercpp/lint_cmake.xunit.xml" "--package-name" "mytalkercpp" "--output-file" "/home/qkx515/myros2_ws/build/mytalkercpp/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/bouncy/bin/ament_lint_cmake" "--xunit-file" "/home/qkx515/myros2_ws/build/mytalkercpp/test_results/mytalkercpp/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/qkx515/myros2_ws/src/mytalkercpp")
add_test(uncrustify "/usr/bin/python3" "-u" "/opt/ros/bouncy/share/ament_cmake_test/cmake/run_test.py" "/home/qkx515/myros2_ws/build/mytalkercpp/test_results/mytalkercpp/uncrustify.xunit.xml" "--package-name" "mytalkercpp" "--output-file" "/home/qkx515/myros2_ws/build/mytalkercpp/ament_uncrustify/uncrustify.txt" "--command" "/opt/ros/bouncy/bin/ament_uncrustify" "--xunit-file" "/home/qkx515/myros2_ws/build/mytalkercpp/test_results/mytalkercpp/uncrustify.xunit.xml")
set_tests_properties(uncrustify PROPERTIES  LABELS "uncrustify;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/qkx515/myros2_ws/src/mytalkercpp")
