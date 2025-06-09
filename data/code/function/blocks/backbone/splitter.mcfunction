execute if score #direction math matches 0 run setblock ~ ~ ~ yellow_terracotta
execute if score #direction math matches 2 run setblock ~ ~ ~ yellow_terracotta
execute if score #direction math matches 1 run setblock ~ ~ ~ lime_terracotta
execute if score #direction math matches 3 run setblock ~ ~ ~ lime_terracotta

summon marker ~.5 ~.5 ~.5 {Tags:["block","block.splitter","block.this"]}
execute if score #direction math matches 0 run tag @n[type=marker,tag=block.this,distance=..1] add block.splitter.ew
execute if score #direction math matches 2 run tag @n[type=marker,tag=block.this,distance=..1] add block.splitter.ew
execute if score #direction math matches 1 run tag @n[type=marker,tag=block.this,distance=..1] add block.splitter.ns
execute if score #direction math matches 3 run tag @n[type=marker,tag=block.this,distance=..1] add block.splitter.ns