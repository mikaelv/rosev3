docker-compose up -d  master
echo Please start ev3_manager on ev3
read -p "Press any key to continue... " -n1 -s
docker-compose up -d robot
docker exec -it robot bash -ci "rosrun teleop_twist_keyboard teleop_twist_keyboard.py"

