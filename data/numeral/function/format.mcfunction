# A[4] -> format
# 0,k,M, B,T,e15, e18,e21,e24, e27,e30,e33
execute store result score #A numeral run data get storage numeral:io A[3]
execute if score #A numeral matches 1.. run return run function numeral:format/format.3
execute store result score #A numeral run data get storage numeral:io A[2]
execute if score #A numeral matches 1.. run return run function numeral:format/format.2
execute store result score #A numeral run data get storage numeral:io A[1]
execute if score #A numeral matches 1.. run return run function numeral:format/format.1
execute store result score #A numeral run data get storage numeral:io A[0]
function numeral:format/format.0