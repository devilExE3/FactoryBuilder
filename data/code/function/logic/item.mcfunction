execute if entity @s[tag=item.moved] run return 0

execute if entity @n[type=marker,tag=block.sell,distance=..0.01] run function code:logic/sell

function code:logic/item.conveyor