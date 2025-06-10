execute if score #direction math matches 0 run setblock ~ ~ ~ pink_terracotta
execute if score #direction math matches 1 run setblock ~ ~ ~ magenta_terracotta
execute if score #direction math matches 2 run setblock ~ ~ ~ purple_terracotta
execute if score #direction math matches 3 run setblock ~ ~ ~ blue_terracotta

function code:blocks/util/place.conveyor
tag @n[type=marker,tag=block.this,distance=..1] add block.furnace