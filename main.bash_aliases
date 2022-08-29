echo


echo -e $lb "	███╗░░██╗██╗░░██╗░░░░░░██████╗░░█████╗░███╗░░██╗███╗░░██╗███████╗██████╗░ "
echo -e $lb "	████╗░██║██║░░██║░░░░░░██╔══██╗██╔══██╗████╗░██║████╗░██║██╔════╝██╔══██╗ "
echo -e $lb "	██╔██╗██║███████║█████╗██████╦╝███████║██╔██╗██║██╔██╗██║█████╗░░██████╔╝ "
echo -e $lb "	██║╚████║██╔══██║╚════╝██╔══██╗██╔══██║██║╚████║██║╚████║██╔══╝░░██╔══██╗ "
echo -e $lb "	██║░╚███║██║░░██║░░░░░░██████╦╝██║░░██║██║░╚███║██║░╚███║███████╗██║░░██║ "
echo -e $lb "	╚═╝░░╚══╝╚═╝░░╚═╝░░░░░░╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚══╝╚══════╝╚═╝░░╚═╝ "
echo -e $r  "                                              Tool by - Ishan Jay  "
echo
echo -e $y "what is your banner name ? : \c"
read Bname
echo
echo -e $y "what is your name ? : \c"
read Bname

echo "cowsay -f eyes "$name" | lolcat " > name.txt
echo "figlet "$Bname" | lolcat " > Bname.txt
echo "clear" > clear.txt
echo "PS1='\$ '" > temp.txt

#remove old files
rm -rf /data/data/com.termux/files/usr/etc/zshrc
rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc

#inject files to zshrc
cat "clear.txt" >> /data/data/com.termux/files/usr/etc/zshrc
cat "name.txt"  >> /data/data/com.termux/files/usr/etc/zshrc
cat "Bname.txt" >> /data/data/com.termux/files/usr/etc/zshrc
cat "temp.txt"  >> /data/data/com.termux/files/usr/etc/zshrc

#inject files to bash.bashrc
cat "clear.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "name.txt"  >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "Bname.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "temp.txt"  >> /data/data/com.termux/files/usr/etc/bash.bashrc

rm -rf name.txt Bname.txt clear.txt temp.txt
echo
figlet finish | lolcat
echo -e $r "Please Restart Your Termux"
