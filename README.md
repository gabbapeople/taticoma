# taticoma
the taticoma robot source code

## Памятка

Переменные окружения ROS

```bash
printenv | grep ROS
source /opt/ros/<distro>/setup.bash
```
Создание рабочего пространства

```bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make

source devel/setup.bash
echo $ROS_PACKAGE_PATH
```
