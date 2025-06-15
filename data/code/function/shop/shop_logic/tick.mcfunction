# check for item in cursor
execute if items entity @s player.cursor * unless items entity @s player.cursor *[custom_data~{shop_item:1b}] run function code:shop/shop_logic/non_shop
execute if items entity @s player.cursor *[custom_data~{shop_item:1b}] run function code:shop/shop_logic/shop_item
execute if items entity @s container.* *[custom_data~{shop_item:1b}] run function code:shop/shop_logic/bulk_item.item
execute if items entity @s weapon.offhand * if data entity @s Inventory[{Slot:-106b}].components."minecraft:entity_data"{Tags:["place"]} run function code:shop/shop_logic/shop_sell
clear @s *[custom_data~{shop_item:1b}]