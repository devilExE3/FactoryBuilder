execute if entity @s[tag=item.moved] run return 0

execute if entity @n[type=marker,tag=block.sell,distance=..0.01] run function code:logic/sell

function code:logic/item.conveyor

# item decay (5 min)
execute store result score life math run data get entity @s PortalCooldown
scoreboard players add life math 1
execute store result entity @s PortalCooldown int 1 run scoreboard players get life math
execute if score life math matches 301.. run kill @s