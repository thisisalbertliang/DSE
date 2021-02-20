#! /bin/bash

mp=$(head -1 foo.txt)
pp=$(tail -1 foo.txt)
#pp=$(awk 'NR==1' foo.txt)

echo ${mp}
echo ${pp}
#while :
# do
#  x=eval "python foo.py"
#  echo x
##  num_outputs=${#x[@]}
##  echo $num_outputs
##  echo ${x[num_outputs-2]}
##  echo ${x[num_outputs-1]}
#
##  echo ${x[*]}
##  echo ${x[0]}
##  echo ${x[1]}
##  echo ${x[2]}
#done