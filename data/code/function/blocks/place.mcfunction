# check if we can place the block
scoreboard players set can_place math 1
execute unless block ~ ~ ~ air run scoreboard players set can_place math 0
execute if entity @p[tag=rc,tag=!in_plot] run scoreboard players set can_place math 0
execute if entity @p[tag=rc,tag=!in_plot] run tellraw @p[tag=rc] "You need to be in your plot to place"

execute as @s[tag=place.conveyor_belt] if score can_place math matches 0 run loot give @p[tag=rc] loot code:blocks/conveyor
execute as @s[tag=place.conveyor_belt] if score can_place math matches 1 run function code:blocks/frontbone/conveyor

execute as @s[tag=place.chute] if score can_place math matches 0 run loot give @p[tag=rc] loot code:blocks/chute
execute as @s[tag=place.chute] if score can_place math matches 1 run function code:blocks/frontbone/chute

execute as @s[tag=place.elevator] if score can_place math matches 0 run loot give @p[tag=rc] loot code:blocks/elevator
execute as @s[tag=place.elevator] if score can_place math matches 1 run function code:blocks/frontbone/elevator

execute as @s[tag=place.sell] if score can_place math matches 0 run loot give @p[tag=rc] loot code:blocks/sell
execute as @s[tag=place.sell] if score can_place math matches 1 run function code:blocks/frontbone/sell

execute as @s[tag=place.cutter] if score can_place math matches 0 run loot give @p[tag=rc] loot code:blocks/cutter
execute as @s[tag=place.cutter] if score can_place math matches 1 run function code:blocks/frontbone/cutter

execute as @s[tag=place.furnace] if score can_place math matches 0 run loot give @p[tag=rc] loot code:blocks/furnace
execute as @s[tag=place.furnace] if score can_place math matches 1 run function code:blocks/frontbone/furnace

execute as @s[tag=place.generator] run function code:blocks/place.generator

execute as @p[tag=rc] run function uuid_linker:get_uuid
data modify entity @n[type=marker,tag=block.this,distance=..1] data.Owner set from storage minecraft:uuid_linker UUID.HexString
data modify entity @n[type=marker,tag=block.this,distance=..1] data.OwnerUUID set from storage minecraft:uuid_linker UUID.IntArray
scoreboard players operation @n[type=marker,tag=block.this,distance=..1] id = @p[tag=rc] id
tag @n[type=marker,tag=block.this,distance=..1] remove block.this

kill @s