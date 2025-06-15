execute if score #direction math matches 0 run setblock ~ ~ ~ white_concrete
execute if score #direction math matches 1 run setblock ~ ~ ~ light_gray_concrete
execute if score #direction math matches 2 run setblock ~ ~ ~ gray_concrete
execute if score #direction math matches 3 run setblock ~ ~ ~ black_concrete

function code:blocks/util/place.conveyor
tag @n[type=marker,tag=block.this,distance=..1] add block.explosive_furnace