# check if output is clogged
execute if entity @n[type=item_display,tag=item,distance=..0.01] run return 0

# check if there are both items
execute positioned ~ ~1 ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.n] positioned ~ ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.w] positioned ~1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.s] positioned ~ ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.e] positioned ~-1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0

execute positioned ~ ~1 ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crusher.top
execute as @s[tag=block.conveyor.n] positioned ~ ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add crusher.side
execute as @s[tag=block.conveyor.w] positioned ~1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crusher.side
execute as @s[tag=block.conveyor.s] positioned ~ ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add crusher.side
execute as @s[tag=block.conveyor.e] positioned ~-1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crusher.side

execute store success score #recipe math run function code:logic/crusher.recipe

kill @n[type=item_display,tag=crusher.side,distance=..1.01,scores={count=..0}]
kill @n[type=item_display,tag=crusher.top,distance=..1.01,scores={count=..0}]
tag @n[type=item_display,tag=crusher.side,distance=..1.01] remove crusher.side
tag @n[type=item_display,tag=crusher.top,distance=..1.01] remove crusher.top

# setup crusher.output count
scoreboard players operation @n[type=item_display,tag=crusher.output,distance=..0.01] count = #count math
scoreboard players operation @n[type=item_display,tag=crusher.output,distance=..0.01] id = @s id
tag @n[type=item_display,tag=crusher.output,distance=..0.01] remove crusher.output