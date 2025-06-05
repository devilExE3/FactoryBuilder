execute if items entity @s player.cursor *[custom_data~{shop:"generator.oak"}] unless score @s money matches 150.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s player.cursor *[custom_data~{shop:"generator.oak"}] unless score @s money matches 150.. run playsound block.note_block.bass
execute if items entity @s player.cursor *[custom_data~{shop:"generator.oak"}] if score @s money matches 150.. run loot give @s loot code:blocks/generator/oak
execute if items entity @s player.cursor *[custom_data~{shop:"generator.oak"}] if score @s money matches 150.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s player.cursor *[custom_data~{shop:"generator.oak"}] if score @s money matches 150.. run scoreboard players remove @s money 150
execute if items entity @s player.cursor *[custom_data~{shop:"generator.stone"}] unless score @s money matches 500.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s player.cursor *[custom_data~{shop:"generator.stone"}] unless score @s money matches 500.. run playsound block.note_block.bass
execute if items entity @s player.cursor *[custom_data~{shop:"generator.stone"}] if score @s money matches 500.. run loot give @s loot code:blocks/generator/stone
execute if items entity @s player.cursor *[custom_data~{shop:"generator.stone"}] if score @s money matches 500.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s player.cursor *[custom_data~{shop:"generator.stone"}] if score @s money matches 500.. run scoreboard players remove @s money 500
execute if items entity @s player.cursor *[custom_data~{shop:"generator.coal"}] unless score @s money matches 100000.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s player.cursor *[custom_data~{shop:"generator.coal"}] unless score @s money matches 100000.. run playsound block.note_block.bass
execute if items entity @s player.cursor *[custom_data~{shop:"generator.coal"}] if score @s money matches 100000.. run loot give @s loot code:blocks/generator/coal
execute if items entity @s player.cursor *[custom_data~{shop:"generator.coal"}] if score @s money matches 100000.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s player.cursor *[custom_data~{shop:"generator.coal"}] if score @s money matches 100000.. run scoreboard players remove @s money 100000
