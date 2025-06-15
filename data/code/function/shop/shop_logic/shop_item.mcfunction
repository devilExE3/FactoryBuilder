# TODO: process item

execute if items entity @s player.cursor *[custom_data~{next_page:1b}] run function code:shop/shop_logic/shop_item.next_page
execute if items entity @s player.cursor *[custom_data~{prev_page:1b}] run function code:shop/shop_logic/shop_item.prev_page

function code:shop/shop_logic/shop_item.item

item replace entity @s player.cursor with air