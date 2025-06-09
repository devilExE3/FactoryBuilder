tag @n[type=item,predicate=code:structure_void,distance=..3] add item.target

data modify storage temp uuid.uuid set value [I;0,0,0,0]
execute store result storage temp uuid.uuid[0] int 1 run scoreboard players get @s block.owner0
execute store result storage temp uuid.uuid[1] int 1 run scoreboard players get @s block.owner1
execute store result storage temp uuid.uuid[2] int 1 run scoreboard players get @s block.owner2
execute store result storage temp uuid.uuid[3] int 1 run scoreboard players get @s block.owner3
data modify entity @n[type=item,tag=item.target,distance=..3] Owner set from storage temp uuid.uuid
data merge entity @n[type=item,tag=item.target,distance=..3] {Glowing:true}
team join yellow @n[type=item,tag=item.target,distance=..3]

execute as @s[tag=block.conveyor] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/conveyor
execute as @s[tag=block.chute] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/chute
execute as @s[tag=block.elevator] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/elevator
execute as @s[tag=block.sell] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/sell
execute as @s[tag=block.cutter] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/cutter
execute as @s[tag=block.furnace] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/furnace
execute as @s[tag=block.crafter_2] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/crafter_2
execute as @s[tag=block.crafter_3] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/crafter_3
execute as @s[tag=block.washer] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/washer
execute as @s[tag=block.flashbaker] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/flashbaker
execute as @s[tag=block.sonic_zapper] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/sonic_zapper
execute as @s[tag=block.crusher] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/crusher
execute as @s[tag=block.enchanter] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/enchanter
execute as @s[tag=block.limiter] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/limiter
execute as @s[tag=block.splitter] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/splitter
execute as @s[tag=block.air_conveyor] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/air_conveyor

execute as @s[tag=block.generator] run function code:blocks/destroy.generator

tag @n[type=item,tag=item.target,distance=..3] remove item.target
kill @n[type=item_display,tag=item,distance=..0.01]

kill @s