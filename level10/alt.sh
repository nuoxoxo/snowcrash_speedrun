rm -rf /tmp/tmp
t=/tmp/tmp
while true; do
  touch $t
  rm -rf $t
  ln -s /home/user/level10/token $t
  rm -rf $t
done
