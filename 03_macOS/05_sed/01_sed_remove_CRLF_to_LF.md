# sed move CRLF to LF
```{zsh}
vi -b test.txt
1^M
2^M

sed -i '' $'s/^M//' test.txt  # Ctrl + V, Ctrl + M

vi -b test.txt
1
2
```
