schedule function code:tick_1s 1s replace
# calculate tps
execute store result score #TPS math run worldborder get
scoreboard players remove #TPS math 59998000
# #TPS = 1000 <-> TPS = 20.00 so divide by 50
# TODO: sidebar

# conveyor logic
tag @e[type=item_display,tag=item.moved] remove item.moved
tag @e[type=item_display,tag=item.cut] remove item.cut
execute as @e[type=item_display,tag=item] at @s run function code:logic/item


scoreboard players add #wait stagger 1
execute if score #wait stagger matches 5.. run scoreboard players set #tick stagger 0
execute if score #wait stagger matches 5.. run function code:stagger
execute if score #wait stagger matches 5.. run scoreboard players set #wait stagger 0

scoreboard players add @a stats.playtime 1

worldborder set 59999000 0
worldborder set 59998000 1