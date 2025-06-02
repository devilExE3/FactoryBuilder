execute as @s[tag=place.generator.oak] if score can_place math matches 0 run loot give @p[tag=rc] loot code:blocks/generator/oak
execute as @s[tag=place.generator.oak] if score can_place math matches 1 run function code:blocks/frontbone/generator/oak
execute as @s[tag=place.generator.stone] if score can_place math matches 0 run loot give @p[tag=rc] loot code:blocks/generator/stone
execute as @s[tag=place.generator.stone] if score can_place math matches 1 run function code:blocks/frontbone/generator/stone
