data modify storage numeral:io B set value [0.0,0.0,150.0,0.0]
function numeral:ext/lda
execute if function numeral:gte run return run function code:shop/shop_logic/item/generator.soul_sand.sell
function code:shop/shop_logic/not_enough_money