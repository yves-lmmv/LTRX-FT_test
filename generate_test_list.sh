#!/bin/bash
rm list.txt -f

#./generate_test_list.sh



for dir in cases/*/     # list directories in the form "/tmp/dirname/"
do
    dir=${dir%*/}      # remove the trailing "/"
    #echo "dir is ${dir##*/}"    # print everything after the final "/"
    pushd "${dir}"
    lDesact=""
    lLabel=""
    grep -q "#DESAC" run
    if [[ $? -eq 0 ]]
    then
    	lDesact="DESAC"
    fi

    lLabel=`awk -F"#LABEL:" '/#LABEL:/{print $2}' run`
    popd
    echo "${dir##*/}, ${lDesact}, ${lLabel}" >> list.txt

done

