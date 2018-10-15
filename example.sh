#! /bin/bash

input="input_files"
ident="-u user -p password"
parts=num_parts


for num in `seq 1 $parts`; do
        ./upload.py $ident -c yes "$input-part$num.osc"  || exit -1

        for rnum in `seq $num $parts`; do
                ./diffpatch.py "$input-part$num.diff.xml" "$input-part$rnum.osc" || exit -1
                mv "$input-part$rnum.osc.diffed" "$input-part$rnum.osc" || exit -1
        done
done


