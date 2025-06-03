execute if score #direction math matches 0 run setblock ~ ~ ~ blast_furnace[facing=north,lit=true]
execute if score #direction math matches 1 run setblock ~ ~ ~ blast_furnace[facing=west,lit=true]
execute if score #direction math matches 2 run setblock ~ ~ ~ blast_furnace[facing=south,lit=true]
execute if score #direction math matches 3 run setblock ~ ~ ~ blast_furnace[facing=east,lit=true]

data modify block ~ ~ ~ lock set value {items:"minecraft:command_block",components:{"minecraft:custom_data":{__locked__:1b}}}

function code:blocks/util/place.conveyor
tag @n[type=marker,tag=block.this,distance=..1] add block.furnace