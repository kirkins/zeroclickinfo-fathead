#!/usr/bin/env bash

sed -i '/^#/ d' output.txt                        # Remove comments
cat output.txt | grep \\.\\. | cut -d' ' -f1 | while read r ; do
  n1=`echo "${r}" | cut -d'.' -f1`
  n2=`echo "${r}" | cut -d'.' -f3`
  mySeq=$(seq $((0x$n1)) $((0x$n2)))
  echo $mySeq | awk '{$1=$1}1'
done

#sed -i 's/.*(//' output.txt                       # Remove columns not needed
#sed -i 's|[(),]||g' output.txt                    # Remove brackets
#sed -i 's/\(.*[^ ]\)[ ]*\(.*\)/\2 \1/' output.txt # Move first column to last
#sed -i '/^$/d' output.txt                         # Remove blank lines
#
## Break lines with 2 entries into 2 lines
#sed -i 's/\.\.\([^ ]*\) *\(.*\)\.\./\t\2\n \1\t/' output.txt
#
#sed -i "s/[[:space:]]\+/ /g" output.txt           # Format spacing

