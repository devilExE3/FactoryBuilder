tag @n[type=item,nbt={Age:0s,Item:{id:"minecraft:structure_void"}},distance=..3] add item.target

data modify entity @n[type=item,tag=item.target,distance=..3] Owner set from entity @s data.OwnerUUID

execute as @s[tag=block.conveyor] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/conveyor
execute as @s[tag=block.chute] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/chute
execute as @s[tag=block.elevator] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/elevator
execute as @s[tag=block.sell] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/sell
execute as @s[tag=block.cutter] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/cutter
execute as @s[tag=block.furnace] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/furnace

execute as @s[tag=block.generator] run function code:blocks/destroy.generator

tag @n[type=item,tag=item.target,distance=..3] add item.target
kill @n[type=item_display,tag=item,distance=..0.01]