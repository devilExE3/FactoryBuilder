# furnace recipes
execute if entity @s[tag=item.cut] run return 0

scoreboard players set mul math 1

function code:logic/furnace.recipes

tag @s add item.cut

scoreboard players operation @s count *= mul math
function code:logic/item.update_count