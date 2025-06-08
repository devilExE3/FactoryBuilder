data modify storage numeral:io B set value [125,0,0,0]
execute if function numeral:gte run return run function code:shop/shop_logic/bulk/chute.sell
function code:shop/shop_logic/not_enough_money