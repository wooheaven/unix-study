# for statement
```{bash}
$ for ((num=1; num<=5; num++)) do printf "%d\n" ${num} ; done
1
2
3
4
5

$ for ((num=5; num>=1; num--)) do echo "$((num)), $((num+2))" ; mv $((num)).png $((num+2)).png ; done
5 7
4 6
3 5
2 4
1 3
```
