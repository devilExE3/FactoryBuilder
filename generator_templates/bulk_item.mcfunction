execute if items entity @s container.* *[custom_data~{shop:"generator.%id%"}] unless score @s money matches %b_price%.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s container.* *[custom_data~{shop:"generator.%id%"}] unless score @s money matches %b_price%.. run playsound block.note_block.bass
execute if items entity @s container.* *[custom_data~{shop:"generator.%id%"}] if score @s money matches %b_price%.. run loot give @s loot code:blocks/generator/%id%
execute if items entity @s container.* *[custom_data~{shop:"generator.%id%"}] if score @s money matches %b_price%.. run loot give @s loot code:blocks/generator/%id%
execute if items entity @s container.* *[custom_data~{shop:"generator.%id%"}] if score @s money matches %b_price%.. run loot give @s loot code:blocks/generator/%id%
execute if items entity @s container.* *[custom_data~{shop:"generator.%id%"}] if score @s money matches %b_price%.. run loot give @s loot code:blocks/generator/%id%
execute if items entity @s container.* *[custom_data~{shop:"generator.%id%"}] if score @s money matches %b_price%.. run loot give @s loot code:blocks/generator/%id%
execute if items entity @s container.* *[custom_data~{shop:"generator.%id%"}] if score @s money matches %b_price%.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s container.* *[custom_data~{shop:"generator.%id%"}] if score @s money matches %b_price%.. run scoreboard players remove @s money %b_price%