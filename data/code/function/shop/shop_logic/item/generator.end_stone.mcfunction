data modify storage numeral:io B set value [0,10000,0,0]
function numeral:ext/lda
execute if function numeral:gte run return run function code:shop/shop_logic/item/generator.end_stone.sell
function code:shop/shop_logic/not_enough_money