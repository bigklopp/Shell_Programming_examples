#!/bin/bash
row1=("1" "2" "3" "4" "5")
row2=("6" "7" "8" "9" "10")

records=(row1 row2)

for record in ${records[*]}
do
    row="$record[*]"
    echo "Row --- " $record
    for col in ${!row}
    do
        echo $record $col
    done
done
