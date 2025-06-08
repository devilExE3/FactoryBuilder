function numeral:add
data modify storage numeral:io A set from storage numeral:io C
scoreboard players remove #n numeral 1
execute if score #n numeral matches 1.. run function numeral:mul.loop