```bash
$ vi ~/.vimrc
...

" ts ref http://vimdoc.sourceforge.net/htmldoc/options.html#'tabstop'
" ts = Number of spaces that a <Tab> in the file counts for
" sts ref http://vimdoc.sourceforge.net/htmldoc/options.html#'softtabstop'
" sts =  Number of spaces that a <Tab> counts for while performing editing
" sw ref http://vimdoc.sourceforge.net/htmldoc/options.html#'shiftwidth'
" sw = Number of spaces to use for each step of (auto)indent
" et ref http://vimdoc.sourceforge.net/htmldoc/options.html#'expandtab'
" et = In Insert mode, Use the appropriate number of spaces to insert a <Tab>

" html
autocmd FileType html exec 'setlocal ts=2 sts=2 sw=2 expandtab nu list'

" javascript
autocmd FileType javascript  exec 'setlocal ts=2 sts=2 sw=2 expandtab nu list'
```
