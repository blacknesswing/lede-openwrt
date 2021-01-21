#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# lede源码增加passwall,也适用于增加其他插件的方法
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
# sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default

rm -rf package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/lean/luci-app-argon-config
# wifi驱动R2s
svn co https://github.com/project-openwrt/openwrt/tree/master/package/ctcgfw/rtl8812au-ac package/ctcgfw/rtl8812au-ac
svn co https://github.com/project-openwrt/openwrt/tree/master/package/ctcgfw/rtl8821cu package/ctcgfw/rtl8821cu
svn co https://github.com/project-openwrt/openwrt/tree/master/package/ctcgfw/rtl88x2bu package/ctcgfw/rtl88x2bu
# https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/rtl8821cu
# 删除源码自带的argon主题，因为最下面一个链接是增加了其他作者制作的argon主题
# cd openwrt
# rm -rf package/lean/luci-theme-argon 

# argon-主题
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
#全新的[argon-主题]登录界面,图片背景跟随Bing.com，每天自动切换
#增加可自定义登录背景功能，请自行将文件上传到/www/luci-static/argon/background 目录下，支持jpg png gif格式图片，主题将会优先显示自定义背景，多个背景为随机显示，系统默认依然为从bing获取
#增加了可以强制锁定暗色模式的功能，如果需要，请登录ssh 输入：touch /etc/dark 即可开启，关闭请输入：rm -rf /etc/dark，关闭后颜色模式为跟随系统

# 京东签到
# git clone https://github.com/jerrykuku/node-request package/node-request
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/luci-app-jd-dailybonus

# Vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr

#oled
git clone https://github.com/NateLol/luci-app-oled package/luci-app-oled

# luci-app-dockerman
git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman

#主题-edge-动态登陆界面
# git clone -b 18.06 https://github.com/garypang13/luci-theme-edge package/luci-theme-edge  

# openclash出国软件
git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash  #openclash出国软件

# 微信推送
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan  #微信推送

# smartdns DNS加速
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns  #smartdns DNS加速

# 内网IP限速工具
git clone https://github.com/garypang13/luci-app-eqos package/luci-app-eqos  #内网IP限速工具
  

# cpu调节
# svn co https://github.com/project-openwrt/openwrt/branches/master/package/lean package/lean/luci-app-cpufreq

# adguardhome
# svn co https://github.com/project-openwrt/openwrt/branches/master/package/ctcgfw/luci-app-adguardhome package/ctcgfw/luci-app-adguardhome


# https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/rtl8821cu

