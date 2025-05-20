# cutter recipes
execute if entity @s[tag=item.cut] run return 0

scoreboard players set mul math 1

execute if data entity @s item{id:"minecraft:oak_slab"} run scoreboard players set mul math 2
execute if data entity @s item{id:"minecraft:oak_slab"} run data modify entity @s item.id set value "minecraft:stick"

execute if data entity @s item{id:"minecraft:oak_planks"} run scoreboard players set mul math 2
execute if data entity @s item{id:"minecraft:oak_planks"} run data modify entity @s item.id set value "minecraft:oak_slab"

execute if data entity @s item{id:"minecraft:oak_log"} run scoreboard players set mul math 4
execute if data entity @s item{id:"minecraft:oak_log"} run data modify entity @s item.id set value "minecraft:oak_planks"

tag @s add item.cut

scoreboard players operation @s count *= mul math
function code:logic/item.update_count