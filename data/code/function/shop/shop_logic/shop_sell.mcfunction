data modify storage numeral:io B set value [0,0,0,0]
function code:shop/shop_logic/shop_sell.item

function numeral:ext/lda
function numeral:add
function numeral:ext/stc

item modify entity @s weapon.offhand code:remove_one
execute if items entity @s weapon.offhand * if data entity @s Inventory[{Slot:-106b}].components."minecraft:entity_data"{Tags:["place"]} run return run function code:shop/shop_logic/shop_sell
item replace entity @s weapon.offhand with barrier
item replace entity @s weapon.offhand with air
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2