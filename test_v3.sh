daftar=$(find /var/log -type f -name "*log")

n=1

for i in $daftar;\
#do j=$(echo $i| sed 's/\.\///g');\
do echo "$n. $i";\
n=$(( $n + 1 )); done