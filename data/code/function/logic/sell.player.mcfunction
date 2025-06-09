#; add A[4] to money
function numeral:ext/ldb
tellraw @s ["A: ",{"storage": "numeral:io","nbt": "A[0]"},",",{"storage": "numeral:io","nbt": "A[1]"},",",{"storage": "numeral:io","nbt": "A[2]"},",",{"storage": "numeral:io","nbt": "A[3]"}]
tellraw @s ["B: ",{"storage": "numeral:io","nbt": "B[0]"},",",{"storage": "numeral:io","nbt": "B[1]"},",",{"storage": "numeral:io","nbt": "B[2]"},",",{"storage": "numeral:io","nbt": "B[3]"}]
function numeral:add

tellraw @s ["C: ",{"storage": "numeral:io","nbt": "C[0]"},",",{"storage": "numeral:io","nbt": "C[1]"},",",{"storage": "numeral:io","nbt": "C[2]"},",",{"storage": "numeral:io","nbt": "C[3]"}]
function numeral:ext/stc