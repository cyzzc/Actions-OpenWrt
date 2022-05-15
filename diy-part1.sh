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
echo 'src-git nezha https://github.com/Erope/openwrt_nezha' >>feeds.conf.default
echo 'src-git netspeedtest  https://github.com/sirpdboy/netspeedtest' >>feeds.conf.default
echo 'src-git small8 https://github.com/kenzok8/small-package' >>feeds.conf.default

# 添加opentopd主题
rm -rf package/lean/luci-theme-opentopd
git clone https://github.com/sirpdboy/luci-theme-opentopd package/lean/luci-theme-opentopd
