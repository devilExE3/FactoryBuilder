execute as @s[tag=block.container] run kill @n[type=item_display,tag=item.container,distance=..0.01]
execute unless entity @n[type=item_display,tag=item,distance=..0.01] run function code:logic/generator.item

scoreboard players set @n[type=item_display,tag=item.this,distance=..0.01] count 1
# containers spawn item stacks of 5
execute as @s[tag=block.container] run function code:logic/generator.container
scoreboard players operation @n[type=item_display,tag=item.this,distance=..0.01] id = @s id
scoreboard players operation @n[type=item_display,tag=item.this,distance=..0.01] stagger = @s stagger
tag @n[type=item_display,tag=item.this,distance=..0.01] remove item.this