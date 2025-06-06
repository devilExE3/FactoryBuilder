execute if score #direction math matches 0 run setblock ~ ~ ~ bricks
execute if score #direction math matches 1 run setblock ~ ~ ~ brick_slab[type=double]
execute if score #direction math matches 2 run setblock ~ ~ ~ tuff_bricks
execute if score #direction math matches 3 run setblock ~ ~ ~ tuff_brick_slab[type=double]

function code:blocks/util/place.conveyor
tag @n[type=marker,tag=block.this,distance=..1] add block.crafter_2