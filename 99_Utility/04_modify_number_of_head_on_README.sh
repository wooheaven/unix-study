fieldNum=$1
startNum=$2
endNum=$3

for (( lineNum=$endNum; lineNum>=$startNum; lineNum-- )) do

    # original line
    printf "original line\t= "
    sed -n ${lineNum}p README.md

    # save values to variables
    oldStr=`sed -n ${lineNum}p README.md | awk 'BEGIN{FS=OFS=" "} {print $2}'`
    if [ $fieldNum == "2" ]; then
        preStr=`sed -n ${lineNum}p README.md | awk 'BEGIN{FS=OFS=" "} {print $2}' | awk 'BEGIN{FS=OFS="."} {print $1"."}'`
        tmpNum=`sed -n ${lineNum}p README.md | awk 'BEGIN{FS=OFS=" "} {print $2}' | awk 'BEGIN{FS=OFS="."} {print $2}'`
    elif [ $fieldNum == "3" ]; then
        preStr=`sed -n ${lineNum}p README.md | awk 'BEGIN{FS=OFS=" "} {print $2}' | awk 'BEGIN{FS=OFS="."} {print $1,$2"."}'`
        tmpNum=`sed -n ${lineNum}p README.md | awk 'BEGIN{FS=OFS=" "} {print $2}' | awk 'BEGIN{FS=OFS="."} {print $3}'`
    fi
    newNum=`echo $tmpNum | awk '{print $1+1}'`
    newStr=`echo $oldStr | sed -e "s/${preStr}${tmpNum}/${preStr}${newNum}/"`

    # check variables
    echo "oldStr \t\t= "$oldStr
    echo "preStr \t\t= "$preStr
    echo "tmpNum \t\t= "$tmpNum
    echo "newNum \t\t= "$newNum
    echo "newStr \t\t= "$newStr

    # grep $oldStr
    printf "modiied line\t= "
    sed -n ${lineNum}p README.md | sed -e "s/${oldStr}/${newStr}/"
    echo ""

    # modify
    sed -i'' -e "${lineNum} s/${oldStr}/${newStr}/" README.md

done

unset startNum
unset endNum
unset lineNum
unset oldStr
unset preStr
unset tmpNum
unset newNum
unset newStr

# remove tmp file
if [ -f ./README.md-e ]; then
    rm -rf ./README.md-e
fi
