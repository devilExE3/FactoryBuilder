execute if entity @s[tag=item.moved] run return 0

execute if entity @n[type=marker,tag=block.sell,distance=..0.01] run function code:logic/sell

function code:logic/item.conveyor

# item decay (5 min)
scoreboard players add @s timer 1
execute if score @s timer matches 301.. run kill @s