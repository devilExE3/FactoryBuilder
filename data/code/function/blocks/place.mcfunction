# check if we can place the block
scoreboard players set #can_place math 1
execute unless block ~ ~ ~ air run scoreboard players set #can_place math 0
# check if it's in the plot
execute if score #can_place math matches 1 run function code:blocks/place.check_plot
# check for special block place
execute if score #can_place math matches 1 as @s[tag=place.carpet] if block ~ ~-1 ~ air run tellraw @p[tag=rc] [{"text":"⬇","color": "yellow","bold": true},{"text":" This block needs support below!","color": "yellow","bold": false}]
execute if score #can_place math matches 1 as @s[tag=place.carpet] if block ~ ~-1 ~ air run scoreboard players set #can_place math 0

execute as @p[tag=rc,gamemode=creative] if block ~ ~ ~ air run scoreboard players set #can_place math 1
execute if score #can_place math matches 0 run return run function code:blocks/place.loot

function code:blocks/place.block

execute if entity @p[tag=rc,gamemode=creative] run return run function code:blocks/place.spawn


execute as @p[tag=rc] run function uuid_linker:get_uuid
data modify entity @n[type=#code:block,tag=block.this,distance=..1] data.Owner set from storage minecraft:uuid_linker UUID.HexString
execute store result score @n[type=#code:block,tag=block.this,distance=..1] block.owner0 run data get entity @p[tag=rc] UUID[0]
execute store result score @n[type=#code:block,tag=block.this,distance=..1] block.owner1 run data get entity @p[tag=rc] UUID[1]
execute store result score @n[type=#code:block,tag=block.this,distance=..1] block.owner2 run data get entity @p[tag=rc] UUID[2]
execute store result score @n[type=#code:block,tag=block.this,distance=..1] block.owner3 run data get entity @p[tag=rc] UUID[3]
scoreboard players operation @n[type=#code:block,tag=block.this,distance=..1] id = @p[tag=rc] id
scoreboard players operation @n[type=#code:block,tag=block.this,distance=..1] stagger.plot = @p[tag=rc] id
scoreboard players operation @n[type=#code:block,tag=block.this,distance=..1] stagger.plot %= #20 math
execute as @n[type=block_display,tag=block.this,tag=block.generator,distance=..1] run function code:blocks/util/stagger
tag @n[type=#code:block,tag=block.this,distance=..1] remove block.this

kill @s