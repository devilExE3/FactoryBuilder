# we have $(id) plot id, $(uuid) raw uuid, $(hex) hex string

scoreboard players add #tiles math 1

data modify storage temp this set from storage tiles tiles[0]
# prepare direction score
execute store result score #direction math run data get storage temp this.direction
# run backbone for tile
function code:plots/load.tile.offset with storage temp this

# frontbone of place
$data modify entity @n[type=#code:block,tag=block.this,distance=..330] data.Owner set value "$(hex)"
$data modify storage temp uuid.uuid set value $(uuid)
execute store result score @n[type=#code:block,tag=block.this,distance=..330] block.owner0 run data get storage temp uuid.uuid[0]
execute store result score @n[type=#code:block,tag=block.this,distance=..330] block.owner1 run data get storage temp uuid.uuid[1]
execute store result score @n[type=#code:block,tag=block.this,distance=..330] block.owner2 run data get storage temp uuid.uuid[2]
execute store result score @n[type=#code:block,tag=block.this,distance=..330] block.owner3 run data get storage temp uuid.uuid[3]
$scoreboard players set @n[type=#code:block,tag=block.this,distance=..330] id $(id)
execute as @n[type=#code:block,tag=block.this,distance=..330] run function code:blocks/util/stagger
tag @n[type=#code:block,tag=block.this,distance=..330] remove block.this

data remove storage tiles tiles[0]
execute if data storage tiles tiles[0] run function code:plots/load.tile with storage player player.plot