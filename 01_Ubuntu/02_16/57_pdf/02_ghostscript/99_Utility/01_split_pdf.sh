#!/bin/sh

gs -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile=splited_%d.pdf $1
