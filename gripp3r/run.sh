basedir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ../master
docker-compose up -d master
cd $basedir

echo Please start ev3_manager on ev3
read -p "Press any key to continue... " -n1 -s
docker-compose up -d robot
docker exec -it robot bash -ci "rosrun teleop_twist_keyboard teleop_twist_keyboard.py"
