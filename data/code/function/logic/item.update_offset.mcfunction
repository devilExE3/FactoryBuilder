# update item display offset
execute as @s[tag=item.elevated,tag=!item.air_carpet] run function code:logic/item.display.normal
execute as @s[tag=!item.air_carpet] if entity @n[type=#code:block,tag=block.air_carpet,distance=..0.01] run function code:logic/item.display.air
execute as @s[tag=item.air_carpet] unless entity @n[type=#code:block,tag=block.air_carpet,distance=..0.01] run tag @s remove item.air_carpet