# check if player is in plot
data modify storage temp player.pos set from entity @s Pos
execute store result score #x math run data get storage temp player.pos[0]
execute store result score #y math run data get storage temp player.pos[2]
scoreboard players operation #x math -= @s plot.x
scoreboard players operation #y math -= @s plot.y
scoreboard players set #in_plot math 0
execute if score #x math matches 2..13 if score #y math matches 2..13 run scoreboard players set #in_plot math 1
execute if score #in_plot math matches 1 if entity @s[tag=!in_plot] run function code:plots/enter_plot
execute if score #in_plot math matches 0 if entity @s[tag=in_plot] run function code:plots/leave_plot