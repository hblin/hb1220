for i in {1..100}; 
do
   let k=101-$i
   let j=2*$k
   mv test$k.txt test$j.txt
done
