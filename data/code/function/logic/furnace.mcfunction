# furnace recipes
execute if entity @s[tag=item.cut] run return 0

scoreboard players set mul math 1

execute if data entity @s item{id:"minecraft:oak_log"} run data modify entity @s item.id set value "minecraft:charcoal"
execute if data entity @s item{id:"minecraft:cobblestone"} run data modify entity @s item.id set value "minecraft:stone"

tag @s add item.cut

scoreboard players operation @s count *= mul math
function code:logic/item.update_count