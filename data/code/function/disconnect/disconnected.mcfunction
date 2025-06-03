# we have $(value) as raw

$data remove storage storage online[{uuid:"$(value)"}]

# load player data
$data modify storage storage player set from storage storage "$(value)"

# save plot
scoreboard players set #backup math 0
function code:plots/save with storage storage player.plot
data modify storage storage player.tiles set from storage storage tiles

# save money ?

# save player data
$data modify storage storage "$(value)" merge from storage storage player

data remove storage storage copy[0]
function code:disconnect/disconnected with storage storage copy[0]