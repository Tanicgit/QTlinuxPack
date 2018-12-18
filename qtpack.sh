#!/bin/bash
if [ ! $2 -le 10 -a $2 -ge 0 ];then
echo "err1"
exit
fi
dir=$1"pack"
if [ -e $dir ];then
rm -rf $dir
fi
mkdir $dir
num=$2
_sh=$dir"/"$1".sh"
echo '#!/bin/bash' > $_sh
temp='$'
echo "if [ -z $temp$num ];then" >> $_sh
echo 'echo "err num"' >> $_sh
echo 'exit' >> $_sh
echo 'fi'  >> $_sh
echo 'nowpath=$(pwd)' >> $_sh
echo 'export LD_LIBRARY_PATH=$nowpath:$LD_LIBRARY_PATH' >> $_sh
temp1="./$1 "
for((i=1;i<=num;i=i+1))
do
temp2=$temp1"$temp$i "
temp1=$temp2
done
echo "$temp1" >> $_sh
deplist=$(ldd $1 | awk '{if(match($3,"/")){printf("%s " ),$3}}')
cp $deplist $1 $appName_sh $dir
