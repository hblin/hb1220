 #!/bin/bash
cat speech_xi.txt | #view the speech txt 
tr -cs "[a-z|A-Z]" "[\012*]" |  #apply blank instead not a-z or A-Z
tr -s "[A-Z]" "[a-z]" |  #apply lower instead of upper
sort | uniq -c | sort -k1nr -k2 | #sort and devide depend on the words' frequency
head -n10 > result.txt 
