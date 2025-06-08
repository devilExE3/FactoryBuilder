execute if score #direction math matches 0 run setblock ~ ~ ~ blackstone_slab
execute if score #direction math matches 1 run setblock ~ ~ ~ polished_blackstone_slab
execute if score #direction math matches 2 run setblock ~ ~ ~ polished_blackstone_brick_slab
execute if score #direction math matches 3 run setblock ~ ~ ~ purpur_slab

function code:blocks/util/place.conveyor
tag @n[type=marker,tag=block.this,distance=..1] add block.enchanter