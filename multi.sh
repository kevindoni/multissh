#!/bin/bash
rm -rf .bash_history
#CREADO /17/SEP/2020
#BY [ ALEXMOD-TEAM ]
#COLABORADOR [ GILILLO GONZALEZ ]
#CREADO PARA EL GRUPO @CONECTEDMX_VIP

#
#QUEDA PROIBIDO SU VENTA
#
#SCRIPT INTERNO BY KALIX1
#SCRIPT DANKELTHAHER
#SCRIPT POWER MX V3.5
#SCRIPT SSHPLUS BY CRAZY VPN
#adm-mx reaper
#TESTIANDO SCRIPT

fun_ip () {
MIP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
MIP2=$(wget -qO- ipv4.icanhazip.com)
[[ "$MIP" != "$MIP2" ]] && IP="$MIP2" || IP="$MIP"
}
update(){
echo -e "\e[1;37m SISTEM PEMBARUAN...."
apt-get update -y &>/dev/null
apt-get upgrade -y &>/dev/null
#apt-get install figlet -y &>/dev/null
}
msg () {
BRAN='\033[1;37m' && VERMELHO='\e[31m' && VERDE='\e[32m' && AMARELO='\e[33m'
AZUL='\e[34m' && MAGENTA='\e[35m' && MAG='\033[1;36m' &&NEGRITO='\e[1m' && SEMCOR='\e[0m'
 case $1 in
  -ne)cor="${VERMELHO}${NEGRITO}" && echo -ne "${cor}${2}${SEMCOR}";;
  -ama)cor="${AMARELO}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -verm)cor="${AMARELO}${NEGRITO}[!] ${VERMELHO}" && echo -e "${cor}${2}${SEMCOR}";;
  -azu)cor="${MAG}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -verd)cor="${VERDE}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -bra)cor="${BRAN}${NEGRITO}" && echo -ne "${cor}${2}${SEMCOR}";;
  -bar2)cor="\e[0;31m========================================\e[0m" && echo -e "${cor}${SEMCOR}";;
  -bar)cor="\e[1;31m——————————————————————————————————————————————————————" && echo -e "${cor}${SEMCOR}";;
 esac
}
df(){
echo "
 ╭━━━╮╭━━━╮╭━━━╮╭━━╮╭━━━╮╭━━━━╮
┃╭━╮┃┃╭━╮┃┃╭━╮┃╰┫┣╯┃╭━╮┃┃╭╮╭╮┃
┃╰━━╮┃┃╱╰╯┃╰━╯┃╱┃┃╱┃╰━╯┃╰╯┃┃╰╯
╰━━╮┃┃┃╱╭╮┃╭╮╭╯╱┃┃╱┃╭━━╯╱╱┃┃╱╱
┃╰━╯┃┃╰━╯┃┃┃┃╰╮╭┫┣╮┃┃╱╱╱╱╱┃┃╱╱
╰━━━╯╰━━━╯╰╯╰━╯╰━━╯╰╯╱╱╱╱╱╰╯╱╱
╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱
╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱

              "
              }
IP=$(wget -qO- ipv4.icanhazip.com)
systema () {
system=$(echo $(cat -n /etc/issue |grep 1 |cut -d' ' -f6,7,8 |sed 's/1//' |sed 's/      //'))
echo $system|awk '{print $1, $2}'
}
sshplus(){
echo -e "\e[1;33m SCRIPT SSHPLUS\n             TERPILIH"
rm -rf .bash_history
rm -rf multiscript.sh
sleep 3
wget https://raw.githubusercontent.com/scriptsmx/script/master/PLUSX/Plus; chmod +x Plus; ./Plus
rm -rf multiscript.sh
rm -rf Plus
}
#testiando
kaliofc(){
#!/bin/bash
fun_ip
clear
msg -bar
msg -verm " TUNGGU SEBENTAR"
msg -bar
dpkg --configure -a &>/dev/null
apt-get install software-properties-common -y &>/dev/null
apt-add-repository universe -y &>/dev/null
SCPdir="/etc/newadm" #&& [[ ! -d ${SCPdir} ]] && mkdir ${SCPdir}
SCPinstal="$HOME/install" && [[ ! -d ${SCPinstal} ]] && mkdir ${SCPinstal}
SCPidioma="${SCPdir}/idioma"
SCPusr="${SCPdir}/ger-user" #&& [[ ! -d ${SCPusr} ]] && mkdir ${SCPusr}
SCPfrm="/etc/ger-frm" #&& [[ ! -d ${SCPfrm} ]] && mkdir ${SCPfrm}
SCPinst="/etc/ger-inst" #&& [[ ! -d ${SCPinst} ]] && mkdir ${SCPinst}
myip=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | head -n1`;
myint=`ifconfig | grep -B1 "inet addr:$myip" | head -n1 | awk '{print $1}'`;
mkdir -p /etc/B-ADMuser &>/dev/null
rm -rf /etc/localtime &>/dev/null
ln -s /usr/share/zoneinfo/America/Mexico_City /etc/localtime &>/dev/null
inst_components () {
[[ $(dpkg --get-selections|grep -w "nano"|head -1) ]] || apt-get install nano -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "bc"|head -1) ]] || apt-get install bc -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "screen"|head -1) ]] || apt-get install screen -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "python"|head -1) ]] || apt-get install python -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "python3"|head -1) ]] || apt-get install python3 -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "curl"|head -1) ]] || apt-get install curl -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "ufw"|head -1) ]] || apt-get install ufw -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "unzip"|head -1) ]] || apt-get install unzip -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "zip"|head -1) ]] || apt-get install zip -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "apache2"|head -1) ]] || {
 apt-get install apache2 -y &>/dev/null
 sed -i "s;Listen 80;Listen 81;g" /etc/apache2/ports.conf
 service apache2 restart > /dev/null 2>&1 &
 }
}
funcao_idioma () {
msg -bar2
figlet "    -VPS MX-" | lolcat 
echo -e "     SKRIP INI TELAH DIOPTIMALKAN"
msg -bar2
pv="$(echo es)"
[[ ${#id} -gt 2 ]] && id="es" || id="$pv"
byinst="true"
}
install_fim () {
msg -ama "               Menyelesaikan Instalasi" && msg bar2
[[ $(find /etc/newadm/ger-user -name nombre.log|grep -w "nombre.log"|head -1) ]] || wget -O /etc/newadm/ger-user/nombre.log https://raw.githubusercontent.com/VPS-MX/VPS-MX-8.0/master/ArchivosUtilitarios/nombre.log &>/dev/null
[[ $(find /etc/newadm/ger-user -name IDT.log|grep -w "IDT.log"|head -1) ]] || wget -O /etc/newadm/ger-user/IDT.log https://raw.githubusercontent.com/VPS-MX/VPS-MX-8.0/master/ArchivosUtilitarios/IDT.log &>/dev/null
[[ $(find /etc/newadm/ger-user -name tiemlim.log|grep -w "tiemlim.log"|head -1) ]] || wget -O /etc/newadm/ger-user/tiemlim.log https://raw.githubusercontent.com/VPS-MX/VPS-MX-8.0/master/ArchivosUtilitarios/tiemlim.log &>/dev/null
msg -bar
echo -e " PERUBAHAN RESELLER (disarankan)"
msg -bar
read -p " APAKAH ANDA AKAN MEMBUAT RESELLER BARU? : " mensaje
echo "$mensaje" > ${SCPdir}/message.txt
sleep 3.s
echo -e " PESAN BERHASIL BERUBAH"
msg -bar
echo -e " RESELLER BARU ANDA ADALAH:\e[33m $(cat ${SCPdir}/message.txt)"
msg bar
read -p "ENTER untuk menylanjutkan"
msg -bar
sleep 4.s
wget -O /bin/rebootnb https://raw.githubusercontent.com/VPS-MX/VPS-MX-8.0/master/ArchivosUtilitarios/rebootnb &> /dev/null
chmod +x /bin/rebootnb 
wget -O /bin/resetsshdrop https://raw.githubusercontent.com/VPS-MX/VPS-MX-8.0/master/ArchivosUtilitarios/resetsshdrop &> /dev/null
chmod +x /bin/resetsshdrop
wget -O /etc/versin_script_new https://raw.githubusercontent.com/VPS-MX/VPS-MX-8.0/master/Vercion &>/dev/null
msg -bar2
wget -O ${SCPfrm}/ADMbot.sh https://github.com/VPS-MX/VPS-MX-8.0/raw/master/Parches-TEM/ADMbot.sh &>/dev/null
chmod +x ${SCPfrm}/ADMbot.sh
echo '#!/bin/sh -e' > /etc/rc.local
sudo chmod +x /etc/rc.local
echo "sudo rebootnb" >> /etc/rc.local
echo "sudo resetsshdrop" >> /etc/rc.local
echo "sleep 2s" >> /etc/rc.local
echo "exit 0" >> /etc/rc.local
/bin/cp /etc/skel/.bashrc ~/
echo 'clear' >> .bashrc
echo 'echo ""' >> .bashrc
echo 'echo -e "\033[91m      __     ______  ____        __  ____  __ " '>> .bashrc
echo 'echo -e "\033[91m      \ \   / /  _ \/ ___|      |  \/  \ \/ / " '>> .bashrc
echo 'echo -e "\033[91m       \ \ / /| |_) \___ \ _____| |\/| |\  /  " '>> .bashrc
echo 'echo -e "\033[91m        \ V / |  __/ ___) |_____| |  | |/  \  " '>> .bashrc
echo 'echo -e "\033[91m         \_/  |_|   |____/      |_|  |_/_/\_\ " '>> .bashrc
echo 'echo "" '>> .bashrc
echo 'mess1="$(less /etc/newadm/message.txt)" ' >> .bashrc
echo 'echo "" '>> .bashrc
echo 'echo -e "\033[92m        RESELLER : $mess1 "'>> .bashrc
echo 'echo "" '>> .bashrc                                               
echo 'echo -e "\033[97m   PREMIUM SCRIP SILAHKAN KETIK:  sudo menu "'>> .bashrc
#echo 'wget -O /etc/versin_script_new https://raw.githubusercontent.com/VPS-MX/VPS-MX-8.0/master/Vercion &>/dev/null'>> .bashrc
echo 'echo ""'>> .bashrc
echo -e "         PERINTAH UTAMA MASUK PANEL "
echo -e "\033[1;41m                     sudo menu                        \033[0;37m" && msg -bar2
sleep 5
}
verificar_arq () {
[[ ! -d ${SCPdir} ]] && mkdir ${SCPdir}
[[ ! -d ${SCPusr} ]] && mkdir ${SCPusr}
[[ ! -d ${SCPfrm} ]] && mkdir ${SCPfrm}
[[ ! -d ${SCPinst} ]] && mkdir ${SCPinst}
case $1 in
"menu"|"message.txt")ARQ="${SCPdir}/";; #Menu
"usercodes")ARQ="${SCPusr}/";; #Panel SSRR
"C-SSR.sh")ARQ="${SCPinst}/";; #Instalacao
"openssh.sh")ARQ="${SCPinst}/";; #Instalacao
"squid.sh")ARQ="${SCPinst}/";; #Instalacao
"dropbear.sh")ARQ="${SCPinst}/";; #Instalacao
"openvpn.sh")ARQ="${SCPinst}/";; #Instalacao
"ssl.sh")ARQ="${SCPinst}/";; #Instalacao
"shadowsocks.sh")ARQ="${SCPinst}/";; #Instalacao
"Shadowsocks-libev.sh")ARQ="${SCPinst}/";; #Instalacao
"Shadowsocks-R.sh")ARQ="${SCPinst}/";; #Instalacao 
"v2ray.sh")ARQ="${SCPinst}/";; #Instalacao
"budp.sh")ARQ="${SCPinst}/";; #Instalacao
"sockspy.sh"|"PDirect.py"|"PPub.py"|"PPriv.py"|"POpen.py"|"PGet.py")ARQ="${SCPinst}/";; #Instalacao
*)ARQ="${SCPfrm}/";; #Ferramentas
esac
mv -f ${SCPinstal}/$1 ${ARQ}/$1
chmod +x ${ARQ}/$1
}

echo -e "        MEMASANG PAKET........"
apt-get install lsof >/dev/null 2>&1
apt-get install sudo >/dev/null 2>&1
apt-get install cowsay -y >/dev/null 2>&1
apt-get install lolcat -y >/dev/null 2>&1
apt-get install figlet -y >/dev/null 2>&1
apt install python python3 python-pip python3-pip -y >/dev/null 2>&1
inst_components
link=https://raw.githubusercontent.com/VPS-MX/VPS-MX-8.0/master/SCRIPT
wget -O /usr/bin/trans https://raw.githubusercontent.com/VPS-MX/VPS-MX-8.0/master/ArchivosUtilitarios/trans &> /dev/null
wget -O /bin/Desbloqueo.sh https://raw.githubusercontent.com/VPS-MX/VPS-MX-8.0/master/ArchivosUtilitarios/Desbloqueo.sh &> /dev/null
chmod +x /bin/Desbloqueo.sh
wget -O /bin/monitor.sh https://raw.githubusercontent.com/casitadelterror/rex/master/moni/monitor.sh &> /dev/null
chmod +x /bin/monitor.sh
wget -O /var/www/html/estilos.css https://raw.githubusercontent.com/VPS-MX/VPS-MX-8.0/master/ArchivosUtilitarios/Monitor-Service/estilos.css &> /dev/null
msg -bar2
msg -bar2
msg -ama "     [ VPS - MX - SCRIPT \033[1;97m ❌ MOD By @? ❌\033[1;33m ]"
msg -ama "  \033[1;96m      🔰Gunakan Ubuntu Atau Debian🔰 "
msg -bar2
[[ $1 = "" ]] && funcao_idioma || {
[[ ${#1} -gt 2 ]] && funcao_idioma || id="$1"
 }
NOTIFY () {
msg -bar
msg -ama " Notify-BOT (Notificasion Remota)| VPS-MX  "
msg -bar
echo -e "\033[1;94m Ini adalah opsi untuk memberi tahu kapan\n pengguna diblokir atau kedaluwarsa, dan info VPS."
echo -e "\033[1;97m Anda harus menggunakan Telegram BOT @Noti_VPSMX_Bot"
echo -e "\033[1;92m Untuk mendapatkan ID Anda cukup Masukkan perintah /MENU di BOT @SSH_Embexbot"
echo -e "\033[1;92m Menu kecil akan muncul di tempat Anda  👤 ID"
msg -bar
echo -e "\033[1;97mMasukkan nama untuk VPS:\033[0;37m"; read -p " " nombr
echo "${nombr}" > /etc/newadm/ger-user/nombre.log
echo -e "\033[1;97mID 👤:\033[0;37m"; read -p " " idbot
echo "${idbot}" > /etc/newadm/ger-user/IDT.log 
msg -bar
echo -e "\033[1;32m         ID DITAMBAHKAN DENGAN SUKSES"
msg -bar
NOM="$(less /etc/newadm/ger-user/nombre.log)"
NOM1="$(echo $NOM)"
IDB1=`less /etc/newadm/ger-user/IDT.log` > /dev/null 2>&1
IDB2=`echo $IDB1` > /dev/null 2>&1

KEY="862633455:AAGJ9BBJanzV6yYwLSemNAZAVwn7EyjrtcY"
URL="https://api.telegram.org/bot$KEY/sendMessage"
MSG="⚠️ PEMBERITAHUAN VPS: $NOM1 ⚠️
👉 PESAN UJI
🔰 SUKSES ... SELAMAT"
curl -s --max-time 10 -d "chat_id=$IDB2&disable_web_page_preview=1&text=$MSG" $URL &>/dev/null

echo -e "\033[1;34mPESAN UJI TELAH DIKIRIM JIKA TIDAK ADA RESPON, HUBUNGI @? "
}
pontos="*"
_repomx=("ADMbot.sh" "C-SSR.sh" "Crear-Demo.sh" "PDirect.py" "PGet.py" "POpen.py" "PPriv.py" "PPub.py" "Shadowsocks-R.sh" "Shadowsocks-libev.sh" "Unlock-Pass-VULTR.sh" "apacheon.sh" "blockBT.sh" "budp.sh" "dns-netflix.sh" "dropbear.sh" "fai2ban.sh" "gestor.sh" "menu" "message.txt" "openvpn.sh" "paysnd.sh" "ports.sh" "shadowsocks.sh" "sockspy.sh" "speed.sh" "speedtest.py" "squid.sh" "squidpass.sh" "ssl.sh" "tcp.sh" "ultrahost" "usercodes" "utils.sh" "v2ray.sh")
for _archi in ${_repomx[@]}; do
   stopping="Iniciando Descarga"
   msg -verm "${stopping}${pontos}"
   tput cuu1 && tput dl1
   pontos+="*"
	[[ -e ${SCPinstal}/${_archi} ]] && rm -rf ${SCPinstal}/${_archi} >/dev/null 2>&1
	wget -O ${SCPinstal}/${_archi} $link/${_archi} &>/dev/null && verificar_arq "${_archi}"
done
sleep 1s
msg -bar
Key="ScriptFree-Casita-Kalix1-Oficial/12345*456*"
   cat /etc/bash.bashrc|grep -v '[[ $UID != 0 ]] && TMOUT=15 && export TMOUT' > /etc/bash.bashrc.2
   echo -e '[[ $UID != 0 ]] && TMOUT=15 && export TMOUT' >> /etc/bash.bashrc.2
   mv -f /etc/bash.bashrc.2 /etc/bash.bashrc
   echo "${SCPdir}/menu" > /usr/bin/menu && chmod +x /usr/bin/menu
   echo "${SCPdir}/menu" > /usr/bin/adm && chmod +x /usr/bin/adm
   echo "$Key" > ${SCPdir}/key.txt
   [[ -d ${SCPinstal} ]] && rm -rf ${SCPinstal}   
   [[ ${#id} -gt 2 ]] && echo "es" > ${SCPidioma} || echo "${id}" > ${SCPidioma}
   echo -e "${cor[2]}         APAKAH ANDA INGIN MENGINSTAL NOTIFIKASI-BOT?(Default n)"
   echo -e "\033[1;34m  (Anda harus memiliki Telegram dan BOT: @SSH_Embexbot)"
   msg -bar2
   read -p " [ s | n ]: " NOTIFY   
   [[ "$NOTIFY" = "s" || "$NOTIFY" = "S" ]] && NOTIFY
   msg -bar
   [[ ${byinst} = "true" ]] && install_fim
}
#
clear
#figlet  *SCRIPT*
#figlet  *FREE*
#figlet  *2020*
df
echo ""
msg -bar
echo -e "\e[1;37m	OPTION MENU"
echo -e "\e[33m     MESIN            SISTEM"
echo -e "\e[33m  IP : \e[31m$IP\e[0m   \e[33m OS : \e[31m$(systema)"
echo -e "\e[1;31m \e[1;100m@conectedmx_vip   =    @conectedmx\e[0m"
msg -bar
#
echo -e "\e[1;37m	INSTALASI TANPA KUNCI"
msg -bar
echo -e "\e[1;31m {-1-} \e[1;33m SSHPLUS"
echo -e "\e[1;31m {-2-} \e[1;37m UPDATE PAKET -UPDATE -(opsional)"
echo -e "\e[1;31m {-0-} \e[1;37m KELUAR"
echo -ne "\e[1;37m PILIH OPSI: \e[1;33m"; read casitax
case $casitax in
#
0)exit;;
1)sshplus;;
2)update;;
*)echo -e "\e[1;37m HARAP PILIH NOMOR YANG BENAR"
rm -rf multiscript.sh
rm -rf .bash_history
read -p " ENTER UNTUK KEMBALI "
mix
;;
#
esac
rm -rf multiscript.sh
rm -rf .bash_history
