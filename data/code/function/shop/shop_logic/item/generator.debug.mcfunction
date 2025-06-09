data modify storage numeral:io B set value [1,0,0,0]
function numeral:ext/lda
execute if function numeral:gte run return run function code:shop/shop_logic/item/generator.debug.sell
function code:shop/shop_logic/not_enough_money