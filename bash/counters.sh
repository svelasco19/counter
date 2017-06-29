Last login: Tue Jun 20 11:03:49 on ttys000
Sayras-MacBook-Air:~ sayra2.0$ nano counter.sh






















  GNU nano 2.0.6              File: counter.sh                        Modified  

done

counter=0

if ! [ $(myNum %2)) ==0 ];
        then
        counter=1
fi

while [ $counter -le $myNum ];
do
        echo $counter
        let counter=$counter+2;
        sleep 0.5
done

echo yay!!!!!!!


File Name to Write: counter.sh                                                  
^G Get Help         ^T To Files         M-M Mac Format      M-P Prepend
^C Cancel           M-D DOS Format      M-A Append          M-B Backup File
