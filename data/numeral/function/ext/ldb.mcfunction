# load @s into B[4]
data modify storage numeral:io B set value [0,0,0,0]
execute store result storage numeral:io B[0] int 1 run scoreboard players get @s money.0
execute store result storage numeral:io A[1] int 1 run scoreboard players get @s money.1
execute store result storage numeral:io A[2] int 1 run scoreboard players get @s money.2
execute store result storage numeral:io A[3] int 1 run scoreboard players get @s money.3