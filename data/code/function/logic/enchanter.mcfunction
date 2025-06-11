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


execute as @s[tag=block.conveyor.n] positioned ~-1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add enchanter.1
execute as @s[tag=block.conveyor.n] positioned ~1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add enchanter.2
execute as @s[tag=block.conveyor.n] positioned ~ ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add enchanter.3
execute as @s[tag=block.conveyor.w] positioned ~ ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add enchanter.1
execute as @s[tag=block.conveyor.w] positioned ~ ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add enchanter.2
execute as @s[tag=block.conveyor.w] positioned ~1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add enchanter.3
execute as @s[tag=block.conveyor.s] positioned ~-1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add enchanter.1
execute as @s[tag=block.conveyor.s] positioned ~1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add enchanter.2
execute as @s[tag=block.conveyor.s] positioned ~ ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add enchanter.3
execute as @s[tag=block.conveyor.e] positioned ~ ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add enchanter.1
execute as @s[tag=block.conveyor.e] positioned ~ ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add enchanter.2
execute as @s[tag=block.conveyor.e] positioned ~-1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add enchanter.3
# add enchanter.input tags
tag @n[type=item_display,tag=enchanter.1,distance=..1.01] add enchanter.input
tag @n[type=item_display,tag=enchanter.2,distance=..1.01] add enchanter.input
tag @n[type=item_display,tag=enchanter.3,distance=..1.01] add enchanter.input

execute store success score #recipe math run function code:logic/enchanter.recipe

kill @n[type=item_display,tag=enchanter.1,distance=..1.01,scores={count=..0}]
kill @n[type=item_display,tag=enchanter.2,distance=..1.01,scores={count=..0}]
kill @n[type=item_display,tag=enchanter.3,distance=..1.01,scores={count=..0}]
tag @n[type=item_display,tag=enchanter.1,distance=..1.01] remove enchanter.1
tag @n[type=item_display,tag=enchanter.2,distance=..1.01] remove enchanter.2
tag @n[type=item_display,tag=enchanter.3,distance=..1.01] remove enchanter.3
tag @e[type=item_display,tag=enchanter.input,distance=..1.01,limit=3] remove enchanter.input

# setup enchanter.output count
scoreboard players operation @n[type=item_display,tag=enchanter.output,distance=..0.01] count = #count math
scoreboard players operation @n[type=item_display,tag=enchanter.output,distance=..0.01] id = @s id
scoreboard players operation @n[type=item_display,tag=enchanter.output,distance=..0.01] stagger.plot = @s stagger.plot
tag @n[type=item_display,tag=enchanter.output,distance=..0.01] remove enchanter.output