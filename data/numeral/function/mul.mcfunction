# A[4] * #n @ numeral -> A[4] = C[4]
execute if score #n numeral matches 0 run data modify storage numeral:io C set value [0,0,0,0]
data modify storage numeral:io B set from storage numeral:io A
scoreboard players remove #n numeral 1
execute if score #n numeral matches 1.. run function numeral:mul.loop