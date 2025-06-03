# check if there are no players with the same id as @s, then kill @s
scoreboard players set #kill math 1
tag @s add get_score
execute as @a if score @s id = @n[tag=get_score,distance=..0.01] id run scoreboard players set #kill math 0
tag @s remove get_score
execute if score #kill math matches 0 run return 0
tp @s 0 -64 0
kill @s