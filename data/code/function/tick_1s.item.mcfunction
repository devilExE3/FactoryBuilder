function code:logic/item

execute if score @s prev_count = @s count run return 0
scoreboard players operation @s prev_count = @s count
execute store result storage temp count.value int 1 run scoreboard players get @s count
function code:logic/item.name.macro with storage temp count