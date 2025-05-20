# we have $(id) plot id, $(uuid) raw uuid, $(hex) hex string

data modify storage temp this set from storage storage tiles[0]
# prepare direction score
execute store result score #direction math run data get storage temp this.direction
# run backbone for tile
function code:plots/load.tile.offset with storage temp this

# frontbone of place
$data modify entity @n[type=marker,tag=block.this,distance=..32] data.Owner set value "$(hex)"
$scoreboard players set @n[type=marker,tag=block.this,distance=..32] id $(id)
tag @n[type=marker,tag=block.this,distance=..32] remove block.this

data remove storage storage tiles[0]
execute if data storage storage tiles[0] run function code:plots/load.tile with storage storage player.plot