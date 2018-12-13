# taticoma
The taticoma robot source code.

# Памятка
## Команды
График нод:
```bash
rqt_graph
```
## Workspace

Переменные окружения ROS:
```bash
printenv | grep ROS
source /opt/ros/<distro>/setup.bash
```

Создание рабочего пространства:
```bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make
```

Проверка:
```bash
source devel/setup.bash
echo $ROS_PACKAGE_PATH
```

## RPLidar


## Raspberry wifi+ssh
Список сетей:
```bash
sudo iwlist wlan0 scan | grep ESSID
```
Сеть и пароль:
```bash
wpa_passphrase SSIDname MySuperPassword

network={
ssid="SSIDname"
#psk="MySuperPassword"
psk=8263d9d055495146b11a37ee65018796025638ba76525666b38f8f0216eed224
}

sudo bash
cd /etc/wpa_supplicant
wpa_passphrase Amperka mega2560 >> wpa_supplicant.conf
```
Работает ли SSH?:
```bash
sudo systemctl status sshd
```
Коннект по SSH:
```bash
ssh user@adress
ssh ubuntu@192.168.88.250
```



auto.sh bash script autorun add and remove
```bash
nano simple_bash.sh
chmod a+x simple_bash.sh
chmod 777 simple_bash.sh
sudo cp /path_to_script/script.sh /etc/init.d/
sudo update-rc.d script.sh defaults
sudo rm /etc/init.d/script.sh
sudo update-rc.d script.sh remove
```
