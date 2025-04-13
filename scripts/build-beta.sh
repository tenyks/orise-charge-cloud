#!/bin/bash

cd $(dirname "$0")/../ || exit
PRJ_DIR=$(pwd)

echo "====项目目录：${PRJ_DIR}===="

mkdir -p ~/var/dist/711ORiseBeta
echo "====发布目录：${HOME}/var/dist/711ORiseBeta===="

cd ~/var/dist/711ORiseBeta/ || exit
echo "====Build模块omind-baseplat===="
mkdir -p omind-baseplat && cd omind-baseplat || exit
cp "${PRJ_DIR}/omind-modules/omind-baseplat/target/omind-baseplat.jar" ./
cp "${PRJ_DIR}/omind-modules/omind-baseplat/src/main/resources/application-beta.yml" ./
sed 's/替换为目标/omind-baseplat/g' "${PRJ_DIR}/scripts/start.sh" > start.sh
cp "${PRJ_DIR}/scripts/stop.sh" ./
chmod +x start.sh stop.sh
pwd && ls -l

cd ~/var/dist/711ORiseBeta/ || exit
echo "====Build模块omind-mp===="
mkdir -p omind-mp && cd omind-mp || exit
cp "${PRJ_DIR}/omind-modules/omind-mp/target/omind-mp.jar" ./
cp "${PRJ_DIR}/omind-modules/omind-mp/src/main/resources/application-beta.yml" ./
sed 's/替换为目标/omind-mp/g' "${PRJ_DIR}/scripts/start.sh" > start.sh
cp "${PRJ_DIR}/scripts/stop.sh" ./
chmod +x start.sh stop.sh
pwd && ls -l

cd ~/var/dist/711ORiseBeta/ || exit
echo "====Build模块omind-simplat===="
mkdir -p omind-simplat && cd omind-simplat || exit
cp "${PRJ_DIR}/omind-modules/omind-simplat/target/omind-simplat.jar" ./
cp "${PRJ_DIR}/omind-modules/omind-simplat/src/main/resources/application-beta.yml" ./
sed 's/替换为目标/omind-simplat/g' "${PRJ_DIR}/scripts/start.sh" > start.sh
cp "${PRJ_DIR}/scripts/stop.sh" ./
chmod +x start.sh stop.sh
pwd && ls -l

cd ~/var/dist/711ORiseBeta/ || exit
echo "====Build模块ruoyi-auth===="
mkdir -p ruoyi-auth && cd ruoyi-auth || exit
cp "${PRJ_DIR}/ruoyi-auth/target/ruoyi-auth.jar" ./
cp "${PRJ_DIR}/ruoyi-auth/src/main/resources/application-beta.yml" ./
sed 's/替换为目标/ruoyi-auth/g' "${PRJ_DIR}/scripts/start.sh" > start.sh
cp "${PRJ_DIR}/scripts/stop.sh" ./
chmod +x start.sh stop.sh
pwd && ls -l

cd ~/var/dist/711ORiseBeta/ || exit
echo "====Build模块ruoyi-gateway===="
mkdir -p ruoyi-gateway && cd ruoyi-gateway || exit
cp "${PRJ_DIR}/ruoyi-gateway/target/ruoyi-gateway.jar" ./
cp "${PRJ_DIR}/ruoyi-gateway/src/main/resources/application-beta.yml" ./
sed 's/替换为目标/ruoyi-gateway/g' "${PRJ_DIR}/scripts/start.sh" > start.sh
cp "${PRJ_DIR}/scripts/stop.sh" ./
chmod +x start.sh stop.sh
pwd && ls -l

cd ~/var/dist/711ORiseBeta/ || exit
echo "====Build模块ruoyi-resource===="
mkdir -p ruoyi-resource && cd ruoyi-resource || exit
cp "${PRJ_DIR}/ruoyi-modules/ruoyi-resource/target/ruoyi-resource.jar" ./
cp "${PRJ_DIR}/ruoyi-modules/ruoyi-resource/src/main/resources/application-beta.yml" ./
sed 's/替换为目标/ruoyi-resource/g' "${PRJ_DIR}/scripts/start.sh" > start.sh
cp "${PRJ_DIR}/scripts/stop.sh" ./
chmod +x start.sh stop.sh
pwd && ls -l

cd ~/var/dist/711ORiseBeta/ || exit
echo "====Build模块ruoyi-system===="
mkdir -p ruoyi-system && cd ruoyi-system || exit
cp "${PRJ_DIR}/ruoyi-modules/ruoyi-system/target/ruoyi-system.jar" ./
cp "${PRJ_DIR}/ruoyi-modules/ruoyi-system/src/main/resources/application-beta.yml" ./
sed 's/替换为目标/ruoyi-system/g' "${PRJ_DIR}/scripts/start.sh" > start.sh
cp "${PRJ_DIR}/scripts/stop.sh" ./
chmod +x start.sh stop.sh
pwd && ls -l

cd ~/var/dist/711ORiseBeta/ || exit
echo "项目发布结果：" && ls -lr ./*