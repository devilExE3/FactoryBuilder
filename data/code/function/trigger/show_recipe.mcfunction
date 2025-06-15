execute as @s[tag=!used_jei] run function code:trigger/show_recipe.tutorial

# convert recipe id to xyz offset
#(x,y,z) = (29999984 + recipe_id % 16, 300 - recipe_id // 256, recipe_id // 16 % 16)
scoreboard players operation #x math = @s z_show_recipe
scoreboard players operation #x math %= #16 math
scoreboard players add #x math 29999984
scoreboard players operation #y math = @s z_show_recipe
scoreboard players operation #y math /= #256 math
scoreboard players operation #y math *= #-1 math
scoreboard players add #y math 319
scoreboard players operation #z math = @s z_show_recipe
scoreboard players operation #z math /= #16 math
scoreboard players operation #z math %= #16 math
execute store result storage temp recipe.x int 1 run scoreboard players get #x math
execute store result storage temp recipe.y int 1 run scoreboard players get #y math
execute store result storage temp recipe.z int 1 run scoreboard players get #z math

scoreboard players operation #x math = @s id
scoreboard players operation #x math %= #16 math
scoreboard players add #x math 29999984
scoreboard players operation #y math = @s id
scoreboard players operation #y math /= #256 math
scoreboard players operation #y math *= #-1 math
scoreboard players add #y math 280
scoreboard players operation #z math = @s id
scoreboard players operation #z math /= #16 math
scoreboard players operation #z math %= #16 math
execute store result storage temp recipe.px int 1 run scoreboard players get #x math
execute store result storage temp recipe.py int 1 run scoreboard players get #y math
execute store result storage temp recipe.pz int 1 run scoreboard players get #z math
function code:trigger/show_recipe.macro with storage temp recipe
execute at @s run playsound ui.button.click master @s