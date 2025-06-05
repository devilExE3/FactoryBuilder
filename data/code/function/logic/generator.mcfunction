function code:logic/generator.item

scoreboard players set @n[type=item_display,tag=item.this,distance=..0.01] count 1
scoreboard players operation @n[type=item_display,tag=item.this,distance=..0.01] id = @s id
tag @n[type=item_display,tag=item.this,distance=..0.01] remove item.this