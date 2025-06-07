# check if output is clogged
execute if entity @n[type=item_display,tag=item,distance=..0.01] run return 0

# check orientation
scoreboard players set #orient math 0
execute as @s[tag=block.conveyor.w] run scoreboard players set #orient math 1
execute as @s[tag=block.conveyor.e] run scoreboard players set #orient math 1
# check if there are both items
execute if score #orient math matches 0 positioned ~-1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute if score #orient math matches 0 positioned ~1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute if score #orient math matches 1 positioned ~ ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute if score #orient math matches 1 positioned ~ ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0

execute if score #orient math matches 0 positioned ~-1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.1
execute if score #orient math matches 0 positioned ~1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.2
execute if score #orient math matches 1 positioned ~ ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.1
execute if score #orient math matches 1 positioned ~ ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add crafting.2
# add crafting.input tags
tag @n[type=item_display,tag=crafting.1,distance=..2] add crafting.input
tag @n[type=item_display,tag=crafting.2,distance=..2] add crafting.input

execute store success score #recipe math run function code:logic/crafter_2.recipe

kill @n[type=item_display,tag=crafting.1,distance=..2,scores={count=..0}]
kill @n[type=item_display,tag=crafting.2,distance=..2,scores={count=..0}]
tag @n[type=item_display,tag=crafting.1,distance=..2] remove crafting.1
tag @n[type=item_display,tag=crafting.2,distance=..2] remove crafting.2
tag @e[type=item_display,tag=crafting.input,distance=..2,limit=2] remove crafting.input

# setup crafting.output count
scoreboard players operation @n[type=item_display,tag=crafting.output,distance=..0.01] count = #count math
scoreboard players operation @n[type=item_display,tag=crafting.output,distance=..0.01] id = @s id
tag @n[type=item_display,tag=crafting.output,distance=..0.01] remove crafting.output