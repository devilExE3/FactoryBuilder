# load player data
function code:storage/load
data modify storage storage player.plot.uuid set from entity @s UUID

# save plot
function code:plots/save with storage storage player.plot
data remove storage storage player.plot.uuid
data modify storage storage player.tiles set from storage storage tiles

# save money ?

# save player data
function code:storage/save