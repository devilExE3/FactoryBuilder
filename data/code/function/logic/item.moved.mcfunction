tag @s add item.moved
# update surrounding items
execute positioned ~1 ~ ~ as @n[type=item_display,tag=item,tag=!item.moved,distance=..0.01] run function code:logic/item.conveyor
execute positioned ~-1 ~ ~ as @n[type=item_display,tag=item,tag=!item.moved,distance=..0.01] run function code:logic/item.conveyor
execute positioned ~ ~ ~1 as @n[type=item_display,tag=item,tag=!item.moved,distance=..0.01] run function code:logic/item.conveyor
execute positioned ~ ~ ~-1 as @n[type=item_display,tag=item,tag=!item.moved,distance=..0.01] run function code:logic/item.conveyor
execute positioned ~ ~1 ~ as @n[type=item_display,tag=item,tag=!item.moved,distance=..0.01] run function code:logic/item.conveyor
execute positioned ~ ~-1 ~ as @n[type=item_display,tag=item,tag=!item.moved,distance=..0.01] run function code:logic/item.conveyor