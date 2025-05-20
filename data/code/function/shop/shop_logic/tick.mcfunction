# check for item in cursor
execute if items entity @s player.cursor * unless items entity @s player.cursor *[custom_data~{shop_item:1b}] run function code:shop/shop_logic/non_shop
execute if items entity @s player.cursor *[custom_data~{shop_item:1b}] run function code:shop/shop_logic/shop_item

clear @s *[custom_data~{shop_item:1b}]
clear @s light_gray_stained_glass_pane