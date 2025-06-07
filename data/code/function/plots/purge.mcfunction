scoreboard players add #purged math 1
data modify storage temp this set value {}
# get relative pos
execute store result score #x math run data get entity @s Pos[0]
execute store result score #y math run data get entity @s Pos[1]
execute store result score #z math run data get entity @s Pos[2]
scoreboard players operation #x math %= #16 math
scoreboard players operation #z math %= #16 math
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

data modify storage temp purge_data.x set from storage temp this.x
data modify storage temp purge_data.y set from storage temp this.y
data modify storage temp purge_data.z set from storage temp this.z
data modify storage temp purge_data.uuid set value [I;0,0,0,0]
execute store result storage temp purge_data.uuid[0] int 1 run scoreboard players get @s block.owner0
execute store result storage temp purge_data.uuid[1] int 1 run scoreboard players get @s block.owner1
execute store result storage temp purge_data.uuid[2] int 1 run scoreboard players get @s block.owner2
execute store result storage temp purge_data.uuid[3] int 1 run scoreboard players get @s block.owner3
function code:plots/purge.macro with storage temp purge_data

# remove block
setblock ~ ~ ~ air
kill @n[type=item,distance=..3,predicate=code:structure_void]