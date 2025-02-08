#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/luci2/bin/config_generate
sed -i 's/LEDE/OpenWrt-R2s/g' package/base-files/luci2/bin/config_generate

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
# sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 修改机器名称
# sed -i 's/OpenWrt/OpenWrt-R2s/g' package/base-files/files/bin/config_generate
# SWAP LAN WAN 满足千兆场景，可选
sed -i 's,"eth1" "eth0","eth0" "eth1",g' target/linux/rockchip/armv8/base-files/etc/board.d/02_network
sed -i "s,'eth1' 'eth0','eth0' 'eth1',g" target/linux/rockchip/armv8/base-files/etc/board.d/02_network

# 修改版本内核
#sed -i "s/KERNEL_PATCHVER:=*.*/KERNEL_PATCHVER:=5.4/g" target/linux/rockchip/Makefile
#sed -i "s/KERNEL_TESTING_PATCHVER:=*.*/KERNEL_TESTING_PATCHVER:=5.4/g" target/linux/rockchip/Makefile

# 版本号里显示一个自己的名字（281677160 build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
sed -i "s/LEDE /Build by Blacknesswing | LEDE /g" package/lean/default-settings/files/zzz-default-settings

# 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# sed -i '/^UBOOT_TARGETS := rk3528-evb rk3588-evb/s/^/#/' package/boot/uboot-rk35xx/Makefile



