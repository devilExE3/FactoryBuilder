# save tile type and position to tiles[]
data modify storage temp this set value {}
# tile position
execute store result score #x math run data get entity @s Pos[0]
execute store result score #y math run data get entity @s Pos[1]
execute store result score #z math run data get entity @s Pos[2]
scoreboard players operation #x math -= #rx math
scoreboard players operation #z math -= #ry math
execute store result storage temp this.x int 1 run scoreboard players get #x math
execute store result storage temp this.y int 1 run scoreboard players get #y math
execute store result storage temp this.z int 1 run scoreboard players get #z math

# tile type
function code:plots/save.tile.backbone

# save direction
data modify storage temp this.direction set value 0
#execute as @s[tag=block.conveyor.n] run data modify storage temp this.direction set value 0
execute as @s[tag=block.conveyor.w] run data modify storage temp this.direction set value 1
execute as @s[tag=block.splitter.ns] run data modify storage temp this.direction set value 1
execute as @s[tag=block.conveyor.s] run data modify storage temp this.direction set value 2
execute as @s[tag=block.conveyor.e] run data modify storage temp this.direction set value 3

data modify storage tiles tiles append from storage temp this

# remove block
execute if score #backup math matches 0 run setblock ~ ~ ~ air
execute if score #backup math matches 0 run kill @n[type=item,distance=..3,predicate=code:structure_void]