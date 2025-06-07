execute if items entity @s weapon.mainhand nether_star as @s[tag=!holding_shop] run function code:shop/hold_shop
execute unless items entity @s weapon.mainhand nether_star as @s[tag=holding_shop] run function code:shop/done_shop

execute as @s[tag=holding_shop] run function code:shop/shop_logic/tick
function code:shop/shop_logic/tick.update