# TODO: process item
execute if items entity @s container.* *[custom_data~{shop:"conveyor"}] unless score @s money matches 50.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s container.* *[custom_data~{shop:"conveyor"}] unless score @s money matches 50.. run playsound block.note_block.bass
execute if items entity @s container.* *[custom_data~{shop:"conveyor"}] if score @s money matches 50.. run loot give @s loot code:blocks/conveyor
execute if items entity @s container.* *[custom_data~{shop:"conveyor"}] if score @s money matches 50.. run loot give @s loot code:blocks/conveyor
execute if items entity @s container.* *[custom_data~{shop:"conveyor"}] if score @s money matches 50.. run loot give @s loot code:blocks/conveyor
execute if items entity @s container.* *[custom_data~{shop:"conveyor"}] if score @s money matches 50.. run loot give @s loot code:blocks/conveyor
execute if items entity @s container.* *[custom_data~{shop:"conveyor"}] if score @s money matches 50.. run loot give @s loot code:blocks/conveyor
execute if items entity @s container.* *[custom_data~{shop:"conveyor"}] if score @s money matches 50.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s container.* *[custom_data~{shop:"conveyor"}] if score @s money matches 50.. run scoreboard players remove @s money 50

execute if items entity @s container.* *[custom_data~{shop:"chute"}] unless score @s money matches 125.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s container.* *[custom_data~{shop:"chute"}] unless score @s money matches 125.. run playsound block.note_block.bass
execute if items entity @s container.* *[custom_data~{shop:"chute"}] if score @s money matches 125.. run loot give @s loot code:blocks/chute
execute if items entity @s container.* *[custom_data~{shop:"chute"}] if score @s money matches 125.. run loot give @s loot code:blocks/chute
execute if items entity @s container.* *[custom_data~{shop:"chute"}] if score @s money matches 125.. run loot give @s loot code:blocks/chute
execute if items entity @s container.* *[custom_data~{shop:"chute"}] if score @s money matches 125.. run loot give @s loot code:blocks/chute
execute if items entity @s container.* *[custom_data~{shop:"chute"}] if score @s money matches 125.. run loot give @s loot code:blocks/chute
execute if items entity @s container.* *[custom_data~{shop:"chute"}] if score @s money matches 125.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s container.* *[custom_data~{shop:"chute"}] if score @s money matches 125.. run scoreboard players remove @s money 125

execute if items entity @s container.* *[custom_data~{shop:"elevator"}] unless score @s money matches 375.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s container.* *[custom_data~{shop:"elevator"}] unless score @s money matches 375.. run playsound block.note_block.bass
execute if items entity @s container.* *[custom_data~{shop:"elevator"}] if score @s money matches 375.. run loot give @s loot code:blocks/elevator
execute if items entity @s container.* *[custom_data~{shop:"elevator"}] if score @s money matches 375.. run loot give @s loot code:blocks/elevator
execute if items entity @s container.* *[custom_data~{shop:"elevator"}] if score @s money matches 375.. run loot give @s loot code:blocks/elevator
execute if items entity @s container.* *[custom_data~{shop:"elevator"}] if score @s money matches 375.. run loot give @s loot code:blocks/elevator
execute if items entity @s container.* *[custom_data~{shop:"elevator"}] if score @s money matches 375.. run loot give @s loot code:blocks/elevator
execute if items entity @s container.* *[custom_data~{shop:"elevator"}] if score @s money matches 375.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s container.* *[custom_data~{shop:"elevator"}] if score @s money matches 375.. run scoreboard players remove @s money 375

execute if items entity @s container.* *[custom_data~{shop:"sell"}] unless score @s money matches 250.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s container.* *[custom_data~{shop:"sell"}] unless score @s money matches 250.. run playsound block.note_block.bass
execute if items entity @s container.* *[custom_data~{shop:"sell"}] if score @s money matches 250.. run loot give @s loot code:blocks/sell
execute if items entity @s container.* *[custom_data~{shop:"sell"}] if score @s money matches 250.. run loot give @s loot code:blocks/sell
execute if items entity @s container.* *[custom_data~{shop:"sell"}] if score @s money matches 250.. run loot give @s loot code:blocks/sell
execute if items entity @s container.* *[custom_data~{shop:"sell"}] if score @s money matches 250.. run loot give @s loot code:blocks/sell
execute if items entity @s container.* *[custom_data~{shop:"sell"}] if score @s money matches 250.. run loot give @s loot code:blocks/sell
execute if items entity @s container.* *[custom_data~{shop:"sell"}] if score @s money matches 250.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s container.* *[custom_data~{shop:"sell"}] if score @s money matches 250.. run scoreboard players remove @s money 250

execute if items entity @s container.* *[custom_data~{shop:"cutter"}] unless score @s money matches 2500.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s container.* *[custom_data~{shop:"cutter"}] unless score @s money matches 2500.. run playsound block.note_block.bass
execute if items entity @s container.* *[custom_data~{shop:"cutter"}] if score @s money matches 2500.. run loot give @s loot code:blocks/cutter
execute if items entity @s container.* *[custom_data~{shop:"cutter"}] if score @s money matches 2500.. run loot give @s loot code:blocks/cutter
execute if items entity @s container.* *[custom_data~{shop:"cutter"}] if score @s money matches 2500.. run loot give @s loot code:blocks/cutter
execute if items entity @s container.* *[custom_data~{shop:"cutter"}] if score @s money matches 2500.. run loot give @s loot code:blocks/cutter
execute if items entity @s container.* *[custom_data~{shop:"cutter"}] if score @s money matches 2500.. run loot give @s loot code:blocks/cutter
execute if items entity @s container.* *[custom_data~{shop:"cutter"}] if score @s money matches 2500.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s container.* *[custom_data~{shop:"cutter"}] if score @s money matches 2500.. run scoreboard players remove @s money 2500

execute if items entity @s container.* *[custom_data~{shop:"furnace"}] unless score @s money matches 5000.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s container.* *[custom_data~{shop:"furnace"}] unless score @s money matches 5000.. run playsound block.note_block.bass
execute if items entity @s container.* *[custom_data~{shop:"furnace"}] if score @s money matches 5000.. run loot give @s loot code:blocks/furnace
execute if items entity @s container.* *[custom_data~{shop:"furnace"}] if score @s money matches 5000.. run loot give @s loot code:blocks/furnace
execute if items entity @s container.* *[custom_data~{shop:"furnace"}] if score @s money matches 5000.. run loot give @s loot code:blocks/furnace
execute if items entity @s container.* *[custom_data~{shop:"furnace"}] if score @s money matches 5000.. run loot give @s loot code:blocks/furnace
execute if items entity @s container.* *[custom_data~{shop:"furnace"}] if score @s money matches 5000.. run loot give @s loot code:blocks/furnace
execute if items entity @s container.* *[custom_data~{shop:"furnace"}] if score @s money matches 5000.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s container.* *[custom_data~{shop:"furnace"}] if score @s money matches 5000.. run scoreboard players remove @s money 5000

execute if items entity @s container.* *[custom_data~{shop:"crafter_2"}] unless score @s money matches 2500000.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s container.* *[custom_data~{shop:"crafter_2"}] unless score @s money matches 2500000.. run playsound block.note_block.bass
execute if items entity @s container.* *[custom_data~{shop:"crafter_2"}] if score @s money matches 2500000.. run loot give @s loot code:blocks/crafter_2
execute if items entity @s container.* *[custom_data~{shop:"crafter_2"}] if score @s money matches 2500000.. run loot give @s loot code:blocks/crafter_2
execute if items entity @s container.* *[custom_data~{shop:"crafter_2"}] if score @s money matches 2500000.. run loot give @s loot code:blocks/crafter_2
execute if items entity @s container.* *[custom_data~{shop:"crafter_2"}] if score @s money matches 2500000.. run loot give @s loot code:blocks/crafter_2
execute if items entity @s container.* *[custom_data~{shop:"crafter_2"}] if score @s money matches 2500000.. run loot give @s loot code:blocks/crafter_2
execute if items entity @s container.* *[custom_data~{shop:"crafter_2"}] if score @s money matches 2500000.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s container.* *[custom_data~{shop:"crafter_2"}] if score @s money matches 2500000.. run scoreboard players remove @s money 2500000

execute if items entity @s container.* *[custom_data~{shop:"crafter_3"}] unless score @s money matches 500000000.. run tellraw @s {"text":"You don't have enough money","color":"red"}
execute if items entity @s container.* *[custom_data~{shop:"crafter_3"}] unless score @s money matches 500000000.. run playsound block.note_block.bass
execute if items entity @s container.* *[custom_data~{shop:"crafter_3"}] if score @s money matches 500000000.. run loot give @s loot code:blocks/crafter_3
execute if items entity @s container.* *[custom_data~{shop:"crafter_3"}] if score @s money matches 500000000.. run loot give @s loot code:blocks/crafter_3
execute if items entity @s container.* *[custom_data~{shop:"crafter_3"}] if score @s money matches 500000000.. run loot give @s loot code:blocks/crafter_3
execute if items entity @s container.* *[custom_data~{shop:"crafter_3"}] if score @s money matches 500000000.. run loot give @s loot code:blocks/crafter_3
execute if items entity @s container.* *[custom_data~{shop:"crafter_3"}] if score @s money matches 500000000.. run loot give @s loot code:blocks/crafter_3
execute if items entity @s container.* *[custom_data~{shop:"crafter_3"}] if score @s money matches 500000000.. run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if items entity @s container.* *[custom_data~{shop:"crafter_3"}] if score @s money matches 500000000.. run scoreboard players remove @s money 500000000

function code:shop/shop_logic/bulk_item.generator