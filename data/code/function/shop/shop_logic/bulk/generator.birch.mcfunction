data modify storage numeral:io B set value [0,2,0,0]
function numeral:ext/lda
execute if function numeral:gte run return run function code:shop/shop_logic/bulk/generator.birch.sell
function code:shop/shop_logic/not_enough_money