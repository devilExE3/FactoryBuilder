execute if score #direction math matches 0 run setblock ~ ~ ~ light_gray_stained_glass
execute if score #direction math matches 1 run setblock ~ ~ ~ gray_stained_glass
execute if score #direction math matches 2 run setblock ~ ~ ~ black_stained_glass
execute if score #direction math matches 3 run setblock ~ ~ ~ white_stained_glass

function code:blocks/util/place.conveyor
tag @n[type=marker,tag=block.this,distance=..1] add block.furnace