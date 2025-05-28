tellraw @s {"text":"\u2139 Due to a bug in the plot allocator, your plot has been re-alocated.","color":"yellow"}
scoreboard players set @s plot_fix2 1
scoreboard players operation n math = @s id
function code:math/id_to_coords
scoreboard players operation @s plot.x = x math
scoreboard players operation @s plot.x *= .32 math
scoreboard players operation @s plot.y = y math
scoreboard players operation @s plot.y *= .32 math
execute store result storage storage player.plot.x int 32 run scoreboard players get x math
execute store result storage storage player.plot.y int 32 run scoreboard players get y math
execute store result storage storage player.plot.id int 1 run scoreboard players get @s id
function code:storage/save
function code:plots/generate.macro with storage storage player.plot