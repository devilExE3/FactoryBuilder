execute store result score #x math run data get entity @s Pos[0]
execute store result score #y math run data get entity @s Pos[2]
execute store result score #z math run data get entity @s Pos[1]
scoreboard players operation #x math -= @p[tag=rc] plot.x
scoreboard players operation #y math -= @p[tag=rc] plot.y
execute unless score #z math matches 1..5 run tellraw @p[tag=rc] [{"text":"⬆","color": "yellow","bold": true},{"text":" Max build height is 5!","color": "yellow","bold": false}]
execute unless score #z math matches 1..5 run scoreboard players set #can_place math 0
execute if score #x math matches 2..13 if score #y math matches 2..13 run return 0
scoreboard players set #can_place math 0
execute if entity @p[tag=rc,tag=!in_plot] run tellraw @p[tag=rc] {"text":"❎ You need to be in your plot to place","color": "red"}