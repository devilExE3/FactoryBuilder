execute as @s[tag=place.conveyor] run loot give @p[tag=rc] loot code:blocks/conveyor
execute as @s[tag=place.chute] run loot give @p[tag=rc] loot code:blocks/chute
execute as @s[tag=place.elevator] run loot give @p[tag=rc] loot code:blocks/elevator
execute as @s[tag=place.sell] run loot give @p[tag=rc] loot code:blocks/sell
execute as @s[tag=place.cutter] run loot give @p[tag=rc] loot code:blocks/cutter
execute as @s[tag=place.furnace] run loot give @p[tag=rc] loot code:blocks/furnace
execute as @s[tag=place.crafter_2] run loot give @p[tag=rc] loot code:blocks/crafter_2
execute as @s[tag=place.crafter_3] run loot give @p[tag=rc] loot code:blocks/crafter_3
execute as @s[tag=place.washer] run loot give @p[tag=rc] loot code:blocks/washer
execute as @s[tag=place.flashbaker] run loot give @p[tag=rc] loot code:blocks/flashbaker
execute as @s[tag=place.sonic_zapper] run loot give @p[tag=rc] loot code:blocks/sonic_zapper
execute as @s[tag=place.crusher] run loot give @p[tag=rc] loot code:blocks/crusher
execute as @s[tag=place.enchanter] run loot give @p[tag=rc] loot code:blocks/enchanter
execute as @s[tag=place.limiter] run loot give @p[tag=rc] loot code:blocks/limiter
execute as @s[tag=place.splitter] run loot give @p[tag=rc] loot code:blocks/splitter
execute as @s[tag=place.air_conveyor] run loot give @p[tag=rc] loot code:blocks/air_conveyor
execute as @s[tag=place.air_sell] run loot give @p[tag=rc] loot code:blocks/air_sell

execute as @s[tag=place.generator] run function code:blocks/place.generator.loot

kill @s