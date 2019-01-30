startNum=$1
endNum=$2

for (( lineNum=$endNum; lineNum>=$startNum; lineNum-- )) do

    # original line
    sed -n ${lineNum}p README.md

    # save values to variables
    oldStr=`sed -n ${lineNum}p README.md | awk 'BEGIN{FS=OFS=" "} {print $2}'`
    tmpNum=`sed -n ${lineNum}p README.md | awk 'BEGIN{FS=OFS=" "} {print $2}' | awk 'BEGIN{FS=OFS="."} {print $3}'`
    newNum=`echo $tmpNum | awk '{print $1+1}'`
    newStr=`sed -n ${lineNum}p README.md | awk 'BEGIN{FS=OFS=" "} {print $2}' | sed -e "s/${tmpNum}/${newNum}/"`

    # check variables
    echo "oldStr = "$oldStr
    echo "newStr = "$newStr

    # grep $oldStr
    sed -n ${lineNum}p README.md
    sed -n ${lineNum}p README.md | sed -e "s/$oldStr/$newStr/"
    echo ""

    # modify
    sed -i'' -e "${lineNum} s/${oldStr}/${newStr}/" README.md

done

unset startNum
unset endNum
unset lineNum
unset oldStr
unset tmpNum
unset newNum
unset newStr

# remove tmp file
if [ -f ./README.md-e ]; then
    rm -rf ./README.md-e
fi
