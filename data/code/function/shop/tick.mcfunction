execute if items entity @s weapon.mainhand nether_star as @s[tag=!holding_shop] run function code:shop/hold_shop
execute unless items entity @s weapon.mainhand nether_star as @s[tag=holding_shop] run function code:shop/done_shop

tag @s add old_score
execute as @s[tag=holding_shop] as @n[type=chest_minecart,tag=shop] if score @s id = @p[tag=old_score] id run function code:shop/shop_logic/minecart_tick
tag @s remove old_score

execute as @s[tag=holding_shop] run function code:shop/shop_logic/tick