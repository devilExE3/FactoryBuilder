# @s is in a splitter

# check if we are ns
execute if entity @n[type=marker,tag=block.splitter.ns,distance=..0.01] run return run function code:logic/splitter/ns
function code:logic/splitter/ew