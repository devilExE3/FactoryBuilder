# calculate price
scoreboard players set price math 0
execute if data entity @s item{id:"minecraft:oak_log"} run scoreboard players set price math 5
execute if data entity @s item{id:"minecraft:oak_planks"} run scoreboard players set price math 3
execute if data entity @s item{id:"minecraft:oak_slab"} run scoreboard players set price math 2
execute if data entity @s item{id:"minecraft:stick"} run scoreboard players set price math 1

execute if data entity @s item{id:"minecraft:charcoal"} run scoreboard players set price math 25
execute if data entity @s item{id:"minecraft:cobblestone"} run scoreboard players set price math 20
execute if data entity @s item{id:"minecraft:stone"} run scoreboard players set price math 50

# multiply price
scoreboard players operation price math *= @s count

function code:logic/sell.macro with entity @n[type=marker,tag=block.sell,distance=..0.01] data

kill @s
# force update surrounding items
function code:logic/item.moved