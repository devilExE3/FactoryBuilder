tag @s add old_score
execute as @n[type=chest_minecart,tag=shop,distance=..2] if score @s id = @p[tag=old_score] id run function code:shop/kill_shop
tag @s remove old_score
tag @s remove holding_shop