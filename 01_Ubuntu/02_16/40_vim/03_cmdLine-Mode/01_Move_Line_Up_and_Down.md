# Move Lines
```
:5,7m 0 	# move lines 5, 6 and 7 to before first line
:5,7m 21 	# move lines 5, 6 and 7 to after line 21
:5,7m $ 	# move lines 5, 6 and 7 to after last line
:.,.+4m 21 	# move 5 lines starting at current line to after line 21
:,+4m14 	# same (. for current line is assumed)
```

# Move Line
```
:m 12 	# move current line to after line 12
:m 0 	# move current line to before first line
:m $ 	# move current line to after last line 
```
