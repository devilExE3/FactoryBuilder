execute at @s run playsound ui.button.click master @s
execute store result score #recipe_id math run data get entity @s Inventory[{components:{"minecraft:custom_data":{recipe:1b}}}].components."minecraft:custom_data".recipe_id
clear @s *[custom_data~{recipe:1b}]
scoreboard players operation #x math = #recipe_id math
scoreboard players operation #x math %= #16 math
scoreboard players add #x math 29999984
scoreboard players operation #y math = #recipe_id math
scoreboard players operation #y math /= #256 math
scoreboard players operation #y math *= #-1 math
scoreboard players add #y math 300
scoreboard players operation #z math = #recipe_id math
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