data modify storage numeral:io B set value [500000000.0,37.0,0.0,0.0]
function numeral:ext/lda
execute if function numeral:gte run return run function code:shop/shop_logic/bulk/generator.iron.sell
function code:shop/shop_logic/not_enough_money