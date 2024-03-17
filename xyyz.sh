echo '########################'
echo '安装目录强制为root/Bot/'
echo '当前为小雨机器人重装'
echo '进错请关闭当前命令窗'
echo '########################'
if ! type node >/dev/null 2>&1; then
echo 'Node.Js未安装'
echo '正在安装Node.Js v18中'
sudo apt install apt-transport-https curl ca-certificates software-properties-common
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
if ! type node >/dev/null 2>&1; then
echo '##################'
echo 'Node.Js安装失败'
echo '##################'
else
echo '安装Node.Js成功'
fi
else
echo 'Node.Js已安装'
fi
echo '正在下载redis-server数据库中'
sudo apt install redis-server
echo '设置redis-server开机自启中'
sudo systemctl enable redis-server
echo '正在下载Trss崽中'
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai ./Bot/Yunzai/
cd Bot/Yunzai
echo '正在下载喵喵插件中'
git clone --depth=1 https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
echo '正在删除云崽配置文件'
rm -rf /config
echo '正在恢复云崽备份配置文件中-小雨配置文件'
git clone --depth 1 -b 小雨云崽配置 https://gitee.com/SHIKEAIXY/sh ./config
echo '正在安装时雨ICQQ插件bak分支中'
git clone --depth 1 -b bak https://gitee.com/TimeRainStarSky/Yunzai-ICQQ-Plugin ./plugins/ICQQ-Plugin
echo '正在安装小叶QQBot插件中'
git clone --depth 1 https://gitee.com/xiaoye12123/Yunzai-QQBot-Plugin ./plugins/QQBot-Plugin
echo '正在下载椰奶（小雨库）插件中'
git clone --depth=1 https://gitee.com/SHIKEAIXY/yenai-plugin.git ./plugins/yenai-plugin
echo '正在下载小叶插件中'
git clone https://gitee.com/xiaoye12123/xiaoye-plugin.git ./plugins/xiaoye-plugin/
echo '正在下载ws插件中'
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/
echo '正在下载逍遥插件中'
git clone https://gitee.com/Ctrlcvs/xiaoyao-cvs-plugin.git ./plugins/xiaoyao-cvs-plugin/
echo '正在下载小飞插件中'
git clone https://gitee.com/xfdown/xiaofei-plugin.git ./plugins/xiaofei-plugin/
echo '正在下载闲鱼插件中'
git clone --depth=1 https://gitee.com/suancaixianyu/xianyu-plugin.git ./plugins/xianyu-plugin/
echo '正在下载Trss插件中'
git clone --depth 1 https://Yunzai.TRSS.me plugins/TRSS-Plugin
echo '正在下载赞助插件中'
git clone --depth=1 https://gitee.com/SHIKEAIXY/sponsor.git ./plugins/sponsor
echo '正在下载摩拉插件中'
git clone --depth=1 https://gitee.com/Rrrrrrray/mora-plugin.git ./plugins/mora-plugin/
echo '正在下载梁氏插件中'
git clone --depth=1 https://gitee.com/liangshi233/liangshi-calc.git ./plugins/liangshi-calc/
echo '正在下载寄（花花库）插件中'
git clone --depth 1 https://gitee.com/HanaHimeUnica/ji-plugin ./plugins/ji-plugin
echo '正在删除寄插件配置中'
rm -rf /plugins/ji-plugin/config
echo '正在恢复寄插件备份配置中'
git clone --depth 1 -b 小雨寄配置 https://gitee.com/SHIKEAIXY/sh ./plugins/ji-plugin/config
echo '正在下载锅巴插件中'
git clone --depth=1 https://gitee.com/guoba-yunzai/guoba-plugin.git ./plugins/Guoba-Plugin/
echo '正在下载genshin（花花库）插件中'
git clone --depth=1 https://gitee.com/HanaHimeUnica/genshin.git ./plugins/genshin
echo '正在下载土块插件中'
git clone https://gitee.com/SmallK111407/earth-k-plugin.git ./plugins/earth-k-plugin/
echo '正在下载图鉴插件中'
git clone --depth=1 https://gitee.com/Nwflower/atlas ./plugins/Atlas/
echo '正在删除exa插件中'
rm -rf /plugins/example
echo '正在恢复exa备份插件中'
git clone --depth 1 -b 小雨exa https://gitee.com/SHIKEAIXY/sh ./plugins/example
echo '正在下载部分依赖中'
pnpm i
echo '正在下载axios依赖中'
pnpm add axios -w
echo '正在降级puppeteer v21.11.0'
pnpm add puppeteer@21.11.0 -w
