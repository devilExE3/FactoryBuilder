schedule function code:tick_1s 1s replace

execute as @a run scoreboard players operation @s prev_money.0 = @s money.0
execute as @a run scoreboard players operation @s prev_money.1 = @s money.1
execute as @a run scoreboard players operation @s prev_money.2 = @s money.2
execute as @a run scoreboard players operation @s prev_money.3 = @s money.3

# item decay logic
scoreboard players add @e[type=item_display,tag=item,x=0] timer 1
execute as @e[type=item_display,tag=item,x=0,scores={timer=121..}] run kill @s

function code:tick_1s.crafters_stagger

# conveyor logic
tag @e[type=item_display,tag=item.cut,tag=item.moved,x=0] remove item.cut
tag @e[type=item_display,tag=item.moved,x=0] remove item.moved
function code:tick_1s.item_stagger

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
execute if score #wait stagger matches 5.. run function code:tick_1s.gen_stagger

scoreboard players add @a stats.playtime 1

function code:update_sidebar
execute as @a run function code:update_list
execute as @a[gamemode=creative] run function code:alert_gmc