# calculate plot x / y
scoreboard players operation n math = @s id
function code:math/id_to_coords
execute store result storage storage player.plot.x int 32 run scoreboard players get x math
execute store result storage storage player.plot.y int 32 run scoreboard players get y math
execute store result storage storage player.plot.id int 1 run scoreboard players get @s id
data modify storage storage player.tiles set value []
function code:storage/save
function code:plots/generate.macro with storage storage player.plot