# load player data
function code:storage/load
data modify storage player player.plot.uuid set from entity @s UUID

# save plot
function code:plots/save with storage player player.plot
data remove storage player player.plot.uuid
data modify storage player player.tiles set from storage tiles tiles

# save money ?

# save player data
function code:storage/save