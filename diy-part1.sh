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
#添加订阅源
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default
# echo 'src-git OpenClash https://github.com/vernesong/OpenClash' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# lede源码增加passwall,也适用于增加其他插件的方法
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
# sed -i '$a src-git OpenClash https://github.com/vernesong/OpenClash' feeds.conf.default
# sed -i '$a src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' feeds.conf.default


# argon-主题
# rm -rf package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/lean/luci-theme-argon
# git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config

# wifi驱动R2s
# svn co https://github.com/immortalwrt/immortalwrt/trunk/package/kernel/rtl8821cu package/kernel/rtl8821cu
# svn co https://github.com/1715173329/imoutowrt/trunk/package/kernel/rtl8821cu /package/kernel/rtl8821cu
# svn co https://github.com/immortalwrt/immortalwrt/trunk/package/kernel/rtl8812au-ac package/lean/rtl8812au-ac
# svn co https://github.com/immortalwrt/immortalwrt/trunk/package/kernel/rtl88x2bu package/kernel/rtl88x2bu
# svn co https://github.com/immortalwrt/immortalwrt/branches/master/package/kernel/rtl8812au-ac package/rtl8812au-ac


rm -rf package/lean/luci-app-passwall2 && git clone -b main https://github.com/xiaorouji/openwrt-passwall2 package/lean/luci-app-passwall2
rm -rf package/lean/luci-app-passwall && git clone -b main https://github.com/xiaorouji/openwrt-passwall package/lean/luci-app-passwall
# rm -rf package/lean/luci-app-openclash && git clone -b main https://github.com/vernesong/openclash package/lean/luci-app-openclash

# Vssr
# git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
# git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr

#oled
git clone https://github.com/NateLol/luci-app-oled package/luci-app-oled
# clone -b master --single-branch https://github.com/NateLol/luci-app-oled package/lean/luci-app-oled
# package/lean/luci-app-oled/po/zh_Hans package/lean/luci-app-oled/po/zh-cn
# echo "src-git oled https://github.com/NateLol/luci-app-oled" >> ./feeds.conf.default
# git clone -b master --depth 1 https://github.com/NateLol/luci-app-oled.git package/lean/luci-app-oled

#主题-edge-动态登陆界面
# git clone -b 18.06 https://github.com/garypang13/luci-theme-edge package/luci-theme-edge  

# openclash出国软件
# git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash  #openclash出国软件

# 微信推送
# git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan  #微信推送

# smartdns DNS加速
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns  #smartdns DNS加速

# 内网IP限速工具
# git clone https://github.com/garypang13/luci-app-eqos package/luci-app-eqos  #内网IP限速工具
  
# adguardhome
# svn co https://github.com/project-openwrt/openwrt/branches/master/package/ctcgfw/luci-app-adguardhome package/ctcgfw/luci-app-adguardhome

# Add luci-app-ssr-plus
# echo "src-git ssrp https://github.com/fw876/helloworld.git;main" >> ./feeds.conf.default





