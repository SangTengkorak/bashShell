#declare -a Spinner
#
#Spinner=(/ - \\ \| / - \\ \| )
#Spinnerpos=0
#
#update_spinner()
#{
#    printf "\b"${Spinner[$Spinnerpos]}
#    (( Spinnerpos=(Spinnerpos +1)%8 ))
#}

i=1
while [ $i -le 100 ]; 
do 
#    update_spinner;
#    echo "ini angka $i";
    i=$(( $i + 1 ));
    echo -n ". ";
    sleep 1;
done
