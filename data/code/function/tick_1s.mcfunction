schedule function code:tick_1s 1s replace

execute as @a run scoreboard players operation @s prev_money = @s money

# item decay logic
execute as @e[type=item_display,tag=item] run function code:logic/item.despawn

# crafters
execute as @e[type=marker,tag=block.crafter_2] at @s run function code:logic/crafter_2
execute as @e[type=marker,tag=block.crafter_3] at @s run function code:logic/crafter_3

# conveyor logic
tag @e[type=item_display,tag=item.cut,tag=item.moved] remove item.cut
tag @e[type=item_display,tag=item.moved] remove item.moved
execute as @e[type=item_display,tag=item] at @s run function code:logic/item

execute as @a run scoreboard players operation @s prev_money -= @s money
execute as @a run scoreboard players operation @s prev_money *= #-1 math

# update item count
execute as @e[type=item_display,tag=item] run function code:logic/item.name

# calculate mspt average
scoreboard players operation #round_factor math = #avg_COUNT math
scoreboard players add #round_factor math 1
scoreboard players operation #round_factor math /= #2 math
scoreboard players operation #avg_MSPT math += #round_factor math
scoreboard players operation #avg_MSPT math /= #avg_COUNT math
# calculate TPS
scoreboard players set #TPS math 100000
scoreboard players operation #TPS math /= #avg_MSPT math
execute if score #TPS math matches 2000.. run scoreboard players set #TPS math 2000
# reset averages
scoreboard players set #avg_MSPT math 0
scoreboard players set #avg_COUNT math 0

scoreboard players add #wait stagger 1
execute if score #wait stagger matches 5.. run scoreboard players set #tick stagger 0
execute if score #wait stagger matches 5.. run function code:stagger
execute if score #wait stagger matches 5.. run scoreboard players set #wait stagger 0

scoreboard players add @a stats.playtime 1

function code:update_sidebar
execute as @a run function code:update_list