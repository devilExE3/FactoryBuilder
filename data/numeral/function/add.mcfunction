# A[4] + B[4] -> C[4]
data modify storage numeral:io C set value [0,0,0,0]

execute store result score #A numeral run data get storage numeral:io A[0]
execute store result score #B numeral run data get storage numeral:io B[0]
scoreboard players operation #A numeral += #B numeral
scoreboard players set #overflow numeral 0
execute if score #A numeral >= #1b numeral run scoreboard players set #overflow numeral 1
execute if score #A numeral >= #1b numeral run scoreboard players operation #A numeral -= #1b numeral
execute store result storage numeral:io C[0] int 1 run scoreboard players get #A numeral

execute store result score #A numeral run data get storage numeral:io A[1]
execute store result score #B numeral run data get storage numeral:io B[1]
scoreboard players operation #A numeral += #B numeral
scoreboard players operation #A numeral += #overflow numeral
scoreboard players set #overflow numeral 0
execute if score #A numeral >= #1b numeral run scoreboard players set #overflow numeral 1
execute if score #A numeral >= #1b numeral run scoreboard players operation #A numeral -= #1b numeral
execute store result storage numeral:io C[1] int 1 run scoreboard players get #A numeral

execute store result score #A numeral run data get storage numeral:io A[2]
execute store result score #B numeral run data get storage numeral:io B[2]
scoreboard players operation #A numeral += #B numeral
scoreboard players operation #A numeral += #overflow numeral
scoreboard players set #overflow numeral 0
execute if score #A numeral >= #1b numeral run scoreboard players set #overflow numeral 1
execute if score #A numeral >= #1b numeral run scoreboard players operation #A numeral -= #1b numeral
execute store result storage numeral:io C[2] int 1 run scoreboard players get #A numeral

execute store result score #A numeral run data get storage numeral:io A[3]
execute store result score #B numeral run data get storage numeral:io B[3]
scoreboard players operation #A numeral += #B numeral
scoreboard players operation #A numeral += #overflow numeral
scoreboard players set #overflow numeral 0
execute if score #A numeral >= #1b numeral run scoreboard players set #overflow numeral 1
execute if score #A numeral >= #1b numeral run scoreboard players operation #A numeral -= #1b numeral
execute store result storage numeral:io C[3] int 1 run scoreboard players get #A numeral