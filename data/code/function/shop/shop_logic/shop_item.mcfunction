# TODO: process item

execute if items entity @s player.cursor *[custom_data~{next_page:1b}] run scoreboard players add @s shop_page 1
execute if items entity @s player.cursor *[custom_data~{next_page:1b}] run function code:shop/shop_logic/open.page
execute if items entity @s player.cursor *[custom_data~{prev_page:1b}] run scoreboard players remove @s shop_page 1
execute if items entity @s player.cursor *[custom_data~{prev_page:1b}] run function code:shop/shop_logic/open.page

function code:shop/shop_logic/shop_item.item

item replace entity @s player.cursor with air