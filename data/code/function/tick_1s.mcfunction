schedule function code:tick_1s 1s

# conveyor logic
tag @e[type=item_display,tag=item.moved] remove item.moved
tag @e[type=item_display,tag=item.cut] remove item.cut
execute as @e[type=item_display,tag=item] at @s run function code:logic/item