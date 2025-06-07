execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:entity_data"{Tags:["place.conveyor_belt"]} run scoreboard players add @s money 10
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:entity_data"{Tags:["place.chute"]} run scoreboard players add @s money 25
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:entity_data"{Tags:["place.elevator"]} run scoreboard players add @s money 75
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:entity_data"{Tags:["place.sell"]} run scoreboard players add @s money 50
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:entity_data"{Tags:["place.cutter"]} run scoreboard players add @s money 500
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:entity_data"{Tags:["place.furnace"]} run scoreboard players add @s money 1000
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:entity_data"{Tags:["place.crafter_2"]} run scoreboard players add @s money 500000
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:entity_data"{Tags:["place.crafter_3"]} run scoreboard players add @s money 100000000

function code:shop/shop_logic/shop_sell.generator

item modify entity @s weapon.offhand code:remove_one
execute if items entity @s weapon.offhand * if data entity @s Inventory[{Slot:-106b}].components."minecraft:entity_data"{Tags:["place"]} run function code:shop/shop_logic/shop_sell