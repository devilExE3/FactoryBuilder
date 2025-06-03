scoreboard players set @n[type=item_display,tag=item.this,distance=..0.01] count 1
execute as @n[type=item_display,tag=item.this,distance=..0.01] run data merge entity @s {transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,-.23f,0f]},view_range:0.25}
scoreboard players operation @n[type=item_display,tag=item.this,distance=..0.01] id = @s id
tag @n[type=item_display,tag=item.this,distance=..0.01] remove item.this