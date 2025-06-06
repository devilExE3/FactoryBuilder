# check if we can place the block
scoreboard players set #can_place math 1
execute unless block ~ ~ ~ air run scoreboard players set #can_place math 0
execute if entity @p[tag=rc,tag=!in_plot] run scoreboard players set #can_place math 0
execute if entity @p[tag=rc,tag=!in_plot] run tellraw @p[tag=rc] "You need to be in your plot to place"
# check if it's in the plot
execute if score #can_place math matches 1 run function code:blocks/place.check_plot
# check for special block place

execute if score #can_place math matches 0 run return run function code:blocks/place.loot

function code:blocks/place.block

execute as @p[tag=rc] run function uuid_linker:get_uuid
data modify entity @n[type=#code:block,tag=block.this,distance=..1] data.Owner set from storage minecraft:uuid_linker UUID.HexString
data modify entity @n[type=#code:block,tag=block.this,distance=..1] data.OwnerUUID set from entity @p[tag=rc] UUID
scoreboard players operation @n[type=#code:block,tag=block.this,distance=..1] id = @p[tag=rc] id
execute as @n[type=#code:block,tag=block.this,distance=..1] run function code:blocks/util/stagger
tag @n[type=#code:block,tag=block.this,distance=..1] remove block.this

kill @s