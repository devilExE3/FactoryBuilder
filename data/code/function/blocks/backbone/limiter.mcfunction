execute if score #direction math matches 0 run setblock ~ ~ ~ black_terracotta
execute if score #direction math matches 1 run setblock ~ ~ ~ brown_terracotta
execute if score #direction math matches 2 run setblock ~ ~ ~ red_terracotta
execute if score #direction math matches 3 run setblock ~ ~ ~ orange_terracotta

function code:blocks/util/place.conveyor
tag @n[type=marker,tag=block.this,distance=..1] add block.limiter