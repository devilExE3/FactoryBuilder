schedule function code:tick_1s 1s replace

# conveyor logic
tag @e[type=item_display,tag=item.moved] remove item.moved
tag @e[type=item_display,tag=item.cut] remove item.cut
execute as @e[type=item_display,tag=item] at @s run function code:logic/item


scoreboard players add .wait stagger 1
execute if score .wait stagger matches 5.. run scoreboard players set .tick stagger 0
execute if score .wait stagger matches 5.. run function code:stagger
execute if score .wait stagger matches 5.. run scoreboard players set .wait stagger 0

scoreboard players add @a stats.playtime 1