# load player data
function code:storage/load
data modify storage player player.plot.uuid set from entity @s UUID

# save plot
scoreboard players set #backup math 1
function code:plots/save with storage player player.plot
data remove storage player player.plot.uuid
data modify storage player player.tiles set from storage tiles tiles

# print tiles
tellraw @s {"storage": "player", "nbt": "player.tiles"}
tellraw @s {"text":"💾 Export done! Copy the data from the game's console / log file.","color":"light_purple"}

# save storage
function code:storage/save