# use zip on mac
```{zsh}
# zip folder
zip -r file.zip ./folder/

# zip folder as splited files
zip -r -s 3g file.zip ./folder/  # by 3 GB
zip -r -s 105 file.zip ./folder/ # by 105 MB

# zip folder exclude "*.txt"
zip -r file.zip ./folder/ -x "*.txt"
```
