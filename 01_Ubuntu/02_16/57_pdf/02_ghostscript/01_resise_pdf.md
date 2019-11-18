```
$ gs -version
GPL Ghostscript 9.26 (2018-11-20)
Copyright (C) 2018 Artifex Software, Inc.  All rights reserved.

$ cat resize_pdf.sh
#!/bin/bash

#-dPDFSETTINGS=/screen lower quality, smaller size. (72 dpi)
#-dPDFSETTINGS=/ebook for better quality, but slightly larger pdfs. (150 dpi)
#-dPDFSETTINGS=/prepress output similar to Acrobat Distiller "Prepress Optimized" setting (300 dpi)
#-dPDFSETTINGS=/printer selects output similar to the Acrobat Distiller "Print Optimized" setting (300 dpi)
#-dPDFSETTINGS=/default selects output intended to be useful across a wide variety of uses, possibly at the expense of a larger output file

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf $1

$ ./resize_pdf.sh input.pdf 

$ ll -h input.pdf 
-rw-rw-r-- 1 ubuntu ubuntu 474K 11월  4 15:51 input.pdf

$ ll -h output.pdf 
-rw-rw-r-- 1 ubuntu ubuntu 459K 11월  8 15:51 output.pdf
```
