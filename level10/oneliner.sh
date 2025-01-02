bash /tmp/alt.sh 2>/dev/null & \
bash /tmp/go.sh  2>/dev/null & \
-nc -kl 6969 | grep -v '[][()]'