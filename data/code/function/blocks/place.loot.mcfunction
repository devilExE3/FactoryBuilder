execute as @s[tag=place.conveyor_belt] run loot give @p[tag=rc] loot code:blocks/conveyor
execute as @s[tag=place.chute] run loot give @p[tag=rc] loot code:blocks/chute
execute as @s[tag=place.elevator] run loot give @p[tag=rc] loot code:blocks/elevator
execute as @s[tag=place.sell] run loot give @p[tag=rc] loot code:blocks/sell
execute as @s[tag=place.cutter] run loot give @p[tag=rc] loot code:blocks/cutter
execute as @s[tag=place.furnace] run loot give @p[tag=rc] loot code:blocks/furnace
execute as @s[tag=place.crafter_2] run loot give @p[tag=rc] loot code:blocks/crafter_2
execute as @s[tag=place.crafter_3] run loot give @p[tag=rc] loot code:blocks/crafter_3

execute as @s[tag=place.generator] run function code:blocks/place.generator.loot

kill @s