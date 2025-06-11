# check if output is clogged
execute if entity @n[type=item_display,tag=item,distance=..0.01] run return 0

# check if there are both items
execute as @s[tag=block.conveyor.n] positioned ~ ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.w] positioned ~1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.s] positioned ~ ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0
execute as @s[tag=block.conveyor.e] positioned ~-1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return 0

execute as @s[tag=block.conveyor.n] positioned ~ ~ ~1 run tag @n[type=item_display,tag=item,distance=..0.01] add limiter
execute as @s[tag=block.conveyor.w] positioned ~1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add limiter
execute as @s[tag=block.conveyor.s] positioned ~ ~ ~-1 run tag @n[type=item_display,tag=item,distance=..0.01] add limiter
execute as @s[tag=block.conveyor.e] positioned ~-1 ~ ~ run tag @n[type=item_display,tag=item,distance=..0.01] add limiter

# clone tag=limiter
summon item_display ~ ~ ~ {item:{id:"barrier",count:1},teleport_duration:20,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,-.23f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},view_range:0.25,Tags:["item","limiter.output"],CustomName:'"1"',CustomNameVisible:true}
# copy item
data modify entity @n[type=item_display,tag=limiter.output,distance=..0.01] item.id set from entity @n[type=item_display,tag=limiter,distance=..1.01] item.id
data modify entity @n[type=item_display,tag=limiter.output,distance=..0.01] Tags append from entity @n[type=item_display,tag=limiter,distance=..1.01] Tags[]
tag @n[type=item_display,tag=limiter.output,distance=..0.01] remove limiter
scoreboard players remove @n[type=item_display,tag=limiter,distance=..1.01] count 1

kill @n[type=item_display,tag=limiter,distance=..1.01,scores={count=..0}]
tag @n[type=item_display,tag=limiter,distance=..1.01] remove limiter

# setup limiter count
scoreboard players set @n[type=item_display,tag=limiter.output,distance=..0.01] count 1
scoreboard players operation @n[type=item_display,tag=limiter.output,distance=..0.01] id = @s id
scoreboard players operation @n[type=item_display,tag=limiter.output,distance=..0.01] stagger.plot = @s stagger.plot
tag @n[type=item_display,tag=limiter.output,distance=..0.01] remove limiter.output