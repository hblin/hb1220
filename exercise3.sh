i=2
while [ $i -le 200 ]
do
  mv `printf "%g" $i` test`printf "%04g" $i`.txt
  i=`expr $i + 2`
done
