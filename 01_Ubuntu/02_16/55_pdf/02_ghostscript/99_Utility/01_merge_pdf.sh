#!/bin/sh

# input pdf file's name should not be same with merged.pdf
ready="True"
for var in "$@"
do
  echo "var           = "${var}
  echo "var length    = "${#var}
  tmpVar=${var%%merged.pdf}
  echo "tmpVar        = "${tmpVar}
  echo "tmpVar length = "${#tmpVar}
  echo ""
  if [ ${#tmpVar} -eq 0 ]
  then
    ready="False"
    echo "Not ready to merge"
    echo "merged.pdf file can not be input pdf file"
  fi
done

# merged pdf file should not be existed before merge
if [ -e merged.pdf ]
then
  ready="False"
  echo "Not ready to merge"
  echo "merged.pdf file is existed. Please back up this merged.pdf file as another name."
fi

# merge by gs
if [ ${ready} = "True" ]
then
  echo "Ready to merge"
  echo "input pdf files = { "$@" } will be mereged into merged.pdf"
  echo ""
  #gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=merged.pdf input1.pdf input2.pdf
  gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=merged.pdf $@
fi
