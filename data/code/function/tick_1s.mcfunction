schedule function code:tick_1s 20t replace

worldborder set 40000000
worldborder set 40010000 10

execute store result storage profiling:times this.pre.tick_1s int 1 run worldborder get

# execute as @a run scoreboard players operation @s prev_money.0 = @s money.0
# execute as @a run scoreboard players operation @s prev_money.1 = @s money.1
# execute as @a run scoreboard players operation @s prev_money.2 = @s money.2
# execute as @a run scoreboard players operation @s prev_money.3 = @s money.3
scoreboard players operation @a prev_money.0 = @a money.0
scoreboard players operation @a prev_money.1 = @a money.1
scoreboard players operation @a prev_money.2 = @a money.2
scoreboard players operation @a prev_money.3 = @a money.3

execute store result storage profiling:times this.pre.item_decay int 1 run worldborder get
# item decay logic
scoreboard players add @e[type=item_display,tag=item,x=0] timer 1
execute as @e[type=item_display,tag=item,x=0,scores={timer=121..}] run kill @s
execute store result storage profiling:times this.post.item_decay int 1 run worldborder get

execute store result storage profiling:times this.pre.crafters int 1 run worldborder get
execute store result storage profiling:times this.pre.limiter int 1 run worldborder get
# crafters
execute as @e[type=marker,tag=block.limiter,x=0] at @s run function code:logic/limiter
execute store result storage profiling:times this.post.limiter int 1 run worldborder get
execute store result storage profiling:times this.pre.crafter_2 int 1 run worldborder get
execute as @e[type=marker,tag=block.crafter_2,x=0] at @s run function code:logic/crafter_2
execute store result storage profiling:times this.post.crafter_2 int 1 run worldborder get
execute store result storage profiling:times this.pre.crafter_3 int 1 run worldborder get
execute as @e[type=marker,tag=block.crafter_3,x=0] at @s run function code:logic/crafter_3
execute store result storage profiling:times this.post.crafter_3 int 1 run worldborder get
execute store result storage profiling:times this.pre.crusher int 1 run worldborder get
execute as @e[type=marker,tag=block.crusher,x=0] at @s run function code:logic/crusher
execute store result storage profiling:times this.post.crusher int 1 run worldborder get
execute store result storage profiling:times this.pre.enchanter int 1 run worldborder get
execute as @e[type=marker,tag=block.enchanter,x=0] at @s run function code:logic/enchanter
execute store result storage profiling:times this.post.enchanter int 1 run worldborder get
execute store result storage profiling:times this.post.crafters int 1 run worldborder get

execute store result storage profiling:times this.pre.item_logic int 1 run worldborder get
# conveyor logic
tag @e[type=item_display,tag=item.cut,tag=item.moved,x=0] remove item.cut
tag @e[type=item_display,tag=item.moved,x=0] remove item.moved
execute store result storage profiling:times this.pre.item_conveyor int 1 run worldborder get
execute as @e[type=item_display,tag=item,x=0] at @s run function code:logic/item
execute store result storage profiling:times this.post.item_conveyor int 1 run worldborder get
execute store result storage profiling:times this.pre.item_rename int 1 run worldborder get
execute as @e[type=item_display,tag=item,x=0,predicate=code:count_changed] run function code:logic/item.name
execute store result storage profiling:times this.post.item_rename int 1 run worldborder get
execute store result storage profiling:times this.post.item_logic int 1 run worldborder get

# # calculate mspt average
# scoreboard players operation #round_factor math = #avg_COUNT math
# scoreboard players add #round_factor math 1
# scoreboard players operation #round_factor math /= #2 math
# scoreboard players operation #avg_MSPT math += #round_factor math
# scoreboard players operation #avg_MSPT math /= #avg_COUNT math
# # calculate TPS
# scoreboard players set #TPS math 100000
# scoreboard players operation #TPS math /= #avg_MSPT math
# execute if score #TPS math matches 2000.. run scoreboard players set #TPS math 2000
# # reset averages
# scoreboard players set #avg_MSPT math 0
# scoreboard players set #avg_COUNT math 0

execute store result storage profiling:times this.pre.stagger int 1 run worldborder get
scoreboard players add #wait stagger 1
execute if score #wait stagger matches 5.. run scoreboard players set #tick stagger 0
execute if score #wait stagger matches 5.. run function code:stagger
execute if score #wait stagger matches 5.. run scoreboard players set #wait stagger 0
execute store result storage profiling:times this.post.stagger int 1 run worldborder get

scoreboard players add @a stats.playtime 1

execute store result storage profiling:times this.pre.sidebar int 1 run worldborder get
function code:update_sidebar
execute as @a run function code:update_list
execute as @a[gamemode=creative] run function code:alert_gmc
execute store result storage profiling:times this.post.sidebar int 1 run worldborder get

execute store result storage profiling:times this.post.tick_1s int 1 run worldborder get

data modify storage profiling:times list append from storage profiling:times this