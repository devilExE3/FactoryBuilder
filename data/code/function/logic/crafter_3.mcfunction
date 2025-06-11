# check if output is clogged
execute if entity @n[type=item_display,tag=item,distance=..0.01] run return 0

# check if there are both items
execute as @s[tag=block.conveyor.n] positioned ~-1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.n] positioned ~1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.n] positioned ~ ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.w] positioned ~ ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.w] positioned ~ ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.w] positioned ~1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.s] positioned ~-1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.s] positioned ~1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.s] positioned ~ ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.e] positioned ~ ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.e] positioned ~ ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.e] positioned ~-1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0


execute as @s[tag=block.conveyor.n] positioned ~-1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.1
execute as @s[tag=block.conveyor.n] positioned ~1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.2
execute as @s[tag=block.conveyor.n] positioned ~ ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.3
execute as @s[tag=block.conveyor.w] positioned ~ ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.1
execute as @s[tag=block.conveyor.w] positioned ~ ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.2
execute as @s[tag=block.conveyor.w] positioned ~1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.3
execute as @s[tag=block.conveyor.s] positioned ~-1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.1
execute as @s[tag=block.conveyor.s] positioned ~1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.2
execute as @s[tag=block.conveyor.s] positioned ~ ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.3
execute as @s[tag=block.conveyor.e] positioned ~ ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.1
execute as @s[tag=block.conveyor.e] positioned ~ ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.2
execute as @s[tag=block.conveyor.e] positioned ~-1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.3
# add crafting.input tags
tag @n[type=item_display,tag=crafting.1,distance=..1.01] add crafting.input
tag @n[type=item_display,tag=crafting.2,distance=..1.01] add crafting.input
tag @n[type=item_display,tag=crafting.3,distance=..1.01] add crafting.input

execute store success score #recipe math run function code:logic/crafter_3.recipe

kill @n[type=item_display,tag=crafting.1,distance=..1.01,scores={count=..0}]
kill @n[type=item_display,tag=crafting.2,distance=..1.01,scores={count=..0}]
kill @n[type=item_display,tag=crafting.3,distance=..1.01,scores={count=..0}]
tag @n[type=item_display,tag=crafting.1,distance=..1.01] remove crafting.1
tag @n[type=item_display,tag=crafting.2,distance=..1.01] remove crafting.2
tag @n[type=item_display,tag=crafting.3,distance=..1.01] remove crafting.3
tag @e[type=item_display,tag=crafting.input,distance=..1.01,limit=3] remove crafting.input

# setup crafting.output count
scoreboard players operation @n[type=item_display,tag=crafting.output,distance=..0.01] count = #count math
scoreboard players operation @n[type=item_display,tag=crafting.output,distance=..0.01] id = @s id
scoreboard players operation @n[type=item_display,tag=crafting.output,distance=..0.01] stagger.plot = @s stagger.plot
tag @n[type=item_display,tag=crafting.output,distance=..0.01] remove crafting.output