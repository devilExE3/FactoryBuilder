tag @s add old_score
execute as @n[type=chest_minecart,tag=shop,distance=..15] if score @s id = @p[tag=old_score] id run function code:shop/kill_shop
#execute as @n[type=interaction,tag=shop.interaction,distance=..15] if score @s id = @p[tag=old_score] id run kill @s
tag @s remove old_score
tag @s remove holding_shop