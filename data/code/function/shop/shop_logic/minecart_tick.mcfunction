tp @s ~ ~1.2 ~
execute if score @p[tag=old_score] shop_page matches 0 run data modify entity @s Items set from block 29999998 -64 0 Items
execute if score @p[tag=old_score] shop_page matches 1 run data modify entity @s Items set from block 29999998 -64 1 Items