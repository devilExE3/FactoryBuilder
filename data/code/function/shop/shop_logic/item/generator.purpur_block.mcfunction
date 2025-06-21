data modify storage numeral:io B set value [0.0,0.0,100.0,0.0]
function numeral:ext/lda
execute if function numeral:gte run return run function code:shop/shop_logic/item/generator.purpur_block.sell
function code:shop/shop_logic/not_enough_money