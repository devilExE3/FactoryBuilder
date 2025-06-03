summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s player.cursor
data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
item replace entity @s player.cursor with air