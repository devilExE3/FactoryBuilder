# called as player
data modify storage tiles tiles set from storage player player.tiles
# prepare raw uuid and hex string
scoreboard players set #tiles math 0
function uuid_linker:get_uuid
data modify storage player player.plot.uuid set from entity @s UUID
data modify storage player player.plot.hex set from storage minecraft:uuid_linker UUID.HexString
function code:plots/load.offset with storage player player.plot
data remove storage player player.plot.uuid
data remove storage player player.plot.hex

# if any blocks are improperly placed
function code:destroied
tellraw @s [{"text":"💾 Your plot has been loaded. (","color":"light_purple"},{"score": {"name": "#tiles","objective": "math"},"color": "light_purple"},{"text":" tiles)","color": "light_purple"}]