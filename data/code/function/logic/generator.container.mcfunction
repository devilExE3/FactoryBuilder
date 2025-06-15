scoreboard players set @n[type=item_display,tag=item.this,distance=..0.01] count 5
data modify entity @n[type=item_display,tag=item.this,distance=..0.01] item.components."minecraft:item_model" set value "air"
tag @n[type=item_display,tag=item.this,distance=..0.01] add item.container