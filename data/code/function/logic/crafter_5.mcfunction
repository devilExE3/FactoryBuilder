# check if output is clogged
execute if entity @n[type=item_display,tag=item,distance=..0.01] run return 0

# check if there are both items
execute as @s[tag=block.conveyor.n] positioned ~-1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.n] positioned ~1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.n] positioned ~ ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.n] positioned ~-1 ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.n] positioned ~1 ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0

execute as @s[tag=block.conveyor.w] positioned ~ ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.w] positioned ~ ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.w] positioned ~1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.w] positioned ~1 ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.w] positioned ~1 ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0

execute as @s[tag=block.conveyor.s] positioned ~-1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.s] positioned ~1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.s] positioned ~ ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.s] positioned ~-1 ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.s] positioned ~1 ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0

execute as @s[tag=block.conveyor.e] positioned ~ ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.e] positioned ~ ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.e] positioned ~-1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.e] positioned ~-1 ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.e] positioned ~-1 ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0

execute as @s[tag=block.conveyor.n] positioned ~-1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.n] positioned ~1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.n] positioned ~ ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.n] positioned ~-1 ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.n] positioned ~1 ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input

execute as @s[tag=block.conveyor.w] positioned ~ ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.w] positioned ~ ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.w] positioned ~1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.w] positioned ~1 ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.w] positioned ~1 ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input

execute as @s[tag=block.conveyor.s] positioned ~-1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.s] positioned ~1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.s] positioned ~ ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.s] positioned ~-1 ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.s] positioned ~1 ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input

execute as @s[tag=block.conveyor.e] positioned ~ ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.e] positioned ~ ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.e] positioned ~-1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.e] positioned ~-1 ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input
execute as @s[tag=block.conveyor.e] positioned ~-1 ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.input

function code:logic/crafter_5.recipe

kill @e[type=item_display,tag=crafting.input,distance=..1.5,scores={count=..0},limit=5]
tag @e[type=item_display,tag=crafting.input,distance=..1.5,limit=5] remove crafting.input

# setup crafting.output count
scoreboard players operation @n[type=item_display,tag=crafting.output,distance=..0.01] count = #count math
scoreboard players operation @n[type=item_display,tag=crafting.output,distance=..0.01] id = @s id
scoreboard players operation @n[type=item_display,tag=crafting.output,distance=..0.01] stagger = @s stagger
tag @n[type=item_display,tag=crafting.output,distance=..0.01] remove crafting.output