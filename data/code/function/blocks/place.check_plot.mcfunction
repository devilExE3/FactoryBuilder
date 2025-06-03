execute store result score #x math run data get entity @s Pos[0]
execute store result score #y math run data get entity @s Pos[2]
scoreboard players operation #x math -= @p[tag=rc] plot.x
scoreboard players operation #y math -= @p[tag=rc] plot.y
execute if score #x math matches 3..28 if score #y math matches 3..28 run return 0
scoreboard players set #can_place math 0