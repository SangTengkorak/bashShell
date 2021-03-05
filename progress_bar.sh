progbar=$(for i in `find /var/log/ -type f -name "*log"`; do ls -l $i ; done | wc -l)

echo $progbar

i=1

while [ $i -le $progbar ]; 
do 
#    update_spinner;
#    echo "ini angka $i";
    i=$(( $i + 1 ));
    echo -n ". ";
    sleep 1;
done