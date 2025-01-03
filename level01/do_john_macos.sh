if ! [ -d "john" ]; then
    wget https://download.openwall.net/pub/projects/john/contrib/macosx/john-1.8.0.9-jumbo-macosx_sse4.zip
    tar -xvf john-1.8.0.9-jumbo-macosx_sse4.zip
fi

cd john-1.8.0.9-jumbo-macosx_sse4/run
#echo "42hDRfypTqqnw" > infile

scp -P 4242 level01@$(ifconfig|grep 'inet '|sed -n '2p'|cut -d' ' -f2):/etc/passwd $(pwd)/infile

cat infile|grep flag01|awk -F: '{print $2}'
cat infile|grep flag01|awk -F: '{print $2}' > infile
cat infile

./john infile
./john --show infile

cd ../..
rm -rf john*
