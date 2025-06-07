# TODO: process item

execute if items entity @s player.cursor *[custom_data~{next_page:1b}] run scoreboard players add @s shop_page 1
execute if items entity @s player.cursor *[custom_data~{next_page:1b}] run function code:shop/shop_logic/open.page
execute if items entity @s player.cursor *[custom_data~{prev_page:1b}] run scoreboard players remove @s shop_page 1
execute if items entity @s player.cursor *[custom_data~{prev_page:1b}] run function code:shop/shop_logic/open.page

execute if items entity @s player.cursor *[custom_data~{shop:"conveyor"}] unless score @s money matches 10.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s player.cursor *[custom_data~{shop:"conveyor"}] unless score @s money matches 10.. run playsound block.note_block.bass
execute if items entity @s player.cursor *[custom_data~{shop:"conveyor"}] if score @s money matches 10.. run loot give @s loot code:blocks/conveyor
execute if items entity @s player.cursor *[custom_data~{shop:"conveyor"}] if score @s money matches 10.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s player.cursor *[custom_data~{shop:"conveyor"}] if score @s money matches 10.. run scoreboard players remove @s money 10

execute if items entity @s player.cursor *[custom_data~{shop:"chute"}] unless score @s money matches 25.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s player.cursor *[custom_data~{shop:"chute"}] unless score @s money matches 25.. run playsound block.note_block.bass
execute if items entity @s player.cursor *[custom_data~{shop:"chute"}] if score @s money matches 25.. run loot give @s loot code:blocks/chute
execute if items entity @s player.cursor *[custom_data~{shop:"chute"}] if score @s money matches 25.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s player.cursor *[custom_data~{shop:"chute"}] if score @s money matches 25.. run scoreboard players remove @s money 25

execute if items entity @s player.cursor *[custom_data~{shop:"elevator"}] unless score @s money matches 75.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s player.cursor *[custom_data~{shop:"elevator"}] unless score @s money matches 75.. run playsound block.note_block.bass
execute if items entity @s player.cursor *[custom_data~{shop:"elevator"}] if score @s money matches 75.. run loot give @s loot code:blocks/elevator
execute if items entity @s player.cursor *[custom_data~{shop:"elevator"}] if score @s money matches 75.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s player.cursor *[custom_data~{shop:"elevator"}] if score @s money matches 75.. run scoreboard players remove @s money 75

execute if items entity @s player.cursor *[custom_data~{shop:"sell"}] unless score @s money matches 50.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s player.cursor *[custom_data~{shop:"sell"}] unless score @s money matches 50.. run playsound block.note_block.bass
execute if items entity @s player.cursor *[custom_data~{shop:"sell"}] if score @s money matches 50.. run loot give @s loot code:blocks/sell
execute if items entity @s player.cursor *[custom_data~{shop:"sell"}] if score @s money matches 50.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s player.cursor *[custom_data~{shop:"sell"}] if score @s money matches 50.. run scoreboard players remove @s money 50

execute if items entity @s player.cursor *[custom_data~{shop:"cutter"}] unless score @s money matches 500.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s player.cursor *[custom_data~{shop:"cutter"}] unless score @s money matches 500.. run playsound block.note_block.bass
execute if items entity @s player.cursor *[custom_data~{shop:"cutter"}] if score @s money matches 500.. run loot give @s loot code:blocks/cutter
execute if items entity @s player.cursor *[custom_data~{shop:"cutter"}] if score @s money matches 500.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s player.cursor *[custom_data~{shop:"cutter"}] if score @s money matches 500.. run scoreboard players remove @s money 500

execute if items entity @s player.cursor *[custom_data~{shop:"furnace"}] unless score @s money matches 1000.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s player.cursor *[custom_data~{shop:"furnace"}] unless score @s money matches 1000.. run playsound block.note_block.bass
execute if items entity @s player.cursor *[custom_data~{shop:"furnace"}] if score @s money matches 1000.. run loot give @s loot code:blocks/furnace
execute if items entity @s player.cursor *[custom_data~{shop:"furnace"}] if score @s money matches 1000.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s player.cursor *[custom_data~{shop:"furnace"}] if score @s money matches 1000.. run scoreboard players remove @s money 1000

execute if items entity @s player.cursor *[custom_data~{shop:"crafter_2"}] unless score @s money matches 500000.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s player.cursor *[custom_data~{shop:"crafter_2"}] unless score @s money matches 500000.. run playsound block.note_block.bass
execute if items entity @s player.cursor *[custom_data~{shop:"crafter_2"}] if score @s money matches 500000.. run loot give @s loot code:blocks/crafter_2
execute if items entity @s player.cursor *[custom_data~{shop:"crafter_2"}] if score @s money matches 500000.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s player.cursor *[custom_data~{shop:"crafter_2"}] if score @s money matches 500000.. run scoreboard players remove @s money 500000

execute if items entity @s player.cursor *[custom_data~{shop:"crafter_3"}] unless score @s money matches 100000000.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s player.cursor *[custom_data~{shop:"crafter_3"}] unless score @s money matches 100000000.. run playsound block.note_block.bass
execute if items entity @s player.cursor *[custom_data~{shop:"crafter_3"}] if score @s money matches 100000000.. run loot give @s loot code:blocks/crafter_3
execute if items entity @s player.cursor *[custom_data~{shop:"crafter_3"}] if score @s money matches 100000000.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s player.cursor *[custom_data~{shop:"crafter_3"}] if score @s money matches 100000000.. run scoreboard players remove @s money 100000000

function code:shop/shop_logic/shop_item.generator

item replace entity @s player.cursor with air