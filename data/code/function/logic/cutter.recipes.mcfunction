execute if data entity @s item{id:"minecraft:oak_log"} run scoreboard players set mul math 4
execute if data entity @s item{id:"minecraft:oak_log"} run return run data modify entity @s item.id set value "minecraft:oak_planks"
execute if data entity @s item{id:"minecraft:oak_planks"} run scoreboard players set mul math 2
execute if data entity @s item{id:"minecraft:oak_planks"} run return run data modify entity @s item.id set value "minecraft:oak_slab"
execute if data entity @s item{id:"minecraft:oak_slab"} run scoreboard players set mul math 2
execute if data entity @s item{id:"minecraft:oak_slab"} run return run data modify entity @s item.id set value "minecraft:stick"
