# we have $(value) as raw

$data remove storage online online[{uuid:"$(value)"}]

# load player data
$data modify storage player player set from storage storage "$(value)"

# save plot
scoreboard players set #backup math 0
function code:plots/save with storage player player.plot
data modify storage player player.tiles set from storage tiles tiles

# save money ?

# save player data
$data modify storage storage "$(value)" set from storage player player

data remove storage online copy[0]
function code:disconnect/disconnected with storage online copy[0]