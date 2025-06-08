# swap A[4] <-> B[4]
data modify storage numeral:temp A set from storage numeral:io A
data modify storage numeral:io A set from storage numeral:io B
data modify storage numeral:io B set from storage numeral:temp A