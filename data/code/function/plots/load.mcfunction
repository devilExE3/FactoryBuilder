# called as player with storage.player
data modify storage storage tiles set from storage storage player.tiles
# prepare raw uuid and hex string
function uuid_linker:get_uuid
data modify storage storage player.plot.uuid set from entity @s UUID
data modify storage storage player.plot.hex set from storage minecraft:uuid_linker UUID.HexString
function code:plots/load.offset with storage storage player.plot
data remove storage storage player.plot.uuid
data remove storage storage player.plot.hex

# if any blocks are improperly placed
function code:destroied
tellraw @s {"text":"Your plot has been loaded.","color":"light_purple"}