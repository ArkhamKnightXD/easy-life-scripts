#!/bin/bash
# A simple Bash Script To Install Ros, 

echo Instalacion inicial

cd ~

sudo apt update
sudo apt upgrade -y

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt install curl -y

curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt update
sudo apt install ros-noetic-desktop-full -y

source /opt/ros/noetic/setup.bash

echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

source ~/.bashrc

sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y
sudo apt install python3-rosdep -y

rosdep update
sudo rosdep init

echo Creando carpeta de trabajo

mkdir ROS_CRP
mkdir -p ~/ROS_CRP/catkin_ws/src

catkin_make

echo modificando el archivo bashrc

#nano ~/.bashrc

#probando nuevo metodo, si funciona nano no seria necesario, de esta forma agrego este texto a la ultima linea de .bashrc
sed -i -e '$a\source ~/ROS_CRP/catkin_ws/devel/setup.bash' .bashrc 

source ~/.bashrc

echo Archivo modificado con exito descargue e instale VcXsrv antes de continuar.

echo cuando este todo listo presione cualquier tecla para continuar

read

cd ROS_CRP

touch display.sh

sed -i -e '$a\powershell.exe Start ROS_CRP/config.xlaunch' display.sh 

cd ~

source ROS_CRP/display.sh


echo Modificando archivo .bashrc final 
sed -i -e '$a\export DISPLAY=localhost:0.0' .bashrc
sed -i -e '$a\export GAZEBO_IP=127.0.0.1' .bashrc
sed -i -e '$a\export LIBGL_ALWAYS_INDIRECT=0' .bashrc 

source ~/.bashrc

echo modificacion de .bashrc terminada, ahora preparando la prueba.

sudo apt install x11-apps -y

xclock
