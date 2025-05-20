schedule function code:stagger 5t replace
execute as @e[type=marker,tag=block.generator] if score @s stagger = .tick stagger at @s run function code:logic/generator
scoreboard players add .tick stagger 1
execute if score .tick stagger matches 20.. run scoreboard players set .tick stagger 0