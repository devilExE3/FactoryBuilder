scoreboard players add #purged math 1
data modify storage temp this set value {}
# get relative pos
execute store result score #x math run data get entity @s Pos[0]
execute store result score #y math run data get entity @s Pos[1]
execute store result score #z math run data get entity @s Pos[2]
scoreboard players operation #x math %= #32 math
scoreboard players operation #z math %= #32 math
execute store result storage temp this.x int 1 run scoreboard players get #x math
execute store result storage temp this.y int 1 run scoreboard players get #y math
execute store result storage temp this.z int 1 run scoreboard players get #z math
# tile type
function code:plots/save.tile.backbone
# save direction
data modify storage temp this.direction set value 0
#execute as @s[tag=block.conveyor.n] run data modify storage temp this.direction set value 0
execute as @s[tag=block.conveyor.w] run data modify storage temp this.direction set value 1
execute as @s[tag=block.conveyor.s] run data modify storage temp this.direction set value 2
execute as @s[tag=block.conveyor.e] run data modify storage temp this.direction set value 3

data modify entity @s data.x set from storage temp this.x
data modify entity @s data.y set from storage temp this.y
data modify entity @s data.z set from storage temp this.z
function code:plots/purge.macro with entity @s data

# remove block
setblock ~ ~ ~ air
kill @n[type=item,distance=..3,predicate=code:structure_void]