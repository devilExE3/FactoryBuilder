execute if score #direction math matches 0 run setblock ~ ~ ~ terracotta
execute if score #direction math matches 1 run setblock ~ ~ ~ white_terracotta
execute if score #direction math matches 2 run setblock ~ ~ ~ light_gray_terracotta
execute if score #direction math matches 3 run setblock ~ ~ ~ gray_terracotta

function code:blocks/util/place.conveyor
tag @n[type=marker,tag=block.this,distance=..1] add block.crusher