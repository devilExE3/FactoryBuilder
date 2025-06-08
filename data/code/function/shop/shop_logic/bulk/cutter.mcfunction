data modify storage numeral:io B set value [2500,0,0,0]
execute if function numeral:gte run return run function code:shop/shop_logic/bulk/cutter.sell
function code:shop/shop_logic/not_enough_money