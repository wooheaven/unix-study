# find *.java and sed move TAB to 4Spaces
```{zsh}
find $1 -type f -name "*.java" -exec sed -i '' $'s/\t/    /g' {} \;
```
