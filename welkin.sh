#!/bin/bash

# 脚本版本
sh_v="1.0.0"

# 定义颜色
gl_hui='\e[37m'
gl_hong='\033[31m'
gl_lv='\033[32m'
gl_huang='\033[33m'
gl_lan='\033[34m'
gl_bai='\033[0m'
gl_zi='\033[35m'

# 检查是否具有sudo权限
if [[ $EUID -ne 0 ]]; then
  echo -e "${gl_hong}请以 root 用户身份运行该脚本！${gl_bai}"
  exit 1
fi

# 更新系统并安装常见组件
echo -e "${gl_lan}正在更新系统...${gl_bai}"
apt update -y && apt upgrade -y

echo -e "${gl_lv}正在安装常见组件：sudo、wget、curl、git...${gl_bai}"

# 安装必备组件
apt install -y sudo wget curl git

# 安装完成信息
echo -e "${gl_huang}安装完成！${gl_bai}"
echo -e "${gl_lv}可以开始使用以下命令验证安装的工具：${gl_bai}"
echo -e "${gl_zi}sudo --version${gl_bai}"
echo -e "${gl_zi}wget --version${gl_bai}"
echo -e "${gl_zi}curl --version${gl_bai}"
echo -e "${gl_zi}git --version${gl_bai}"

echo -e "${gl_lv}脚本执行完成！${gl_bai}"
