data modify storage numeral:io B set value [5000000,0,0,0]
function numeral:ext/lda
execute if function numeral:gte run return run function code:shop/shop_logic/item/crafter_3.sell
function code:shop/shop_logic/not_enough_money