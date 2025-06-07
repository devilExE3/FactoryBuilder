execute if score #direction math matches 0 run setblock ~ ~ ~ nether_bricks
execute if score #direction math matches 1 run setblock ~ ~ ~ nether_brick_slab[type=double]
execute if score #direction math matches 2 run setblock ~ ~ ~ cracked_nether_bricks
execute if score #direction math matches 3 run setblock ~ ~ ~ chiseled_nether_bricks

function code:blocks/util/place.conveyor
tag @n[type=marker,tag=block.this,distance=..1] add block.crafter_3