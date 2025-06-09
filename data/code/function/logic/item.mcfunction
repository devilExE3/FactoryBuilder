execute if entity @s[tag=item.moved] run return 0

execute if entity @n[type=marker,tag=block.sell,distance=..0.01] run return run function code:logic/sell
execute if entity @n[type=marker,tag=block.air_sell,distance=..0.01] run return run function code:logic/air_sell

function code:logic/item.conveyor