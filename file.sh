make clean
make &>test.log
INC=$(cat ./test.log |sed 's/-I/\n-I/g'|sed -n '/-I/s/^\([^ ]*\).*/\1/p')
SRC=$(cat ./test.log|awk '{for(i=1;i<=NF;i++) if($i ~ /\.c$/) print $i}')
echo $INC
echo $SRC
