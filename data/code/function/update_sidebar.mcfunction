# playercount
execute store result storage temp sidebar.playercount int 1 run scoreboard players get #playercount math
# format tps display
# calculate whole and frac part of TPS
execute store result storage temp sidebar.tps_whole int 0.01 run scoreboard players get #TPS math
# frac part
scoreboard players operation #TPS math %= #100 math
execute store result storage temp sidebar.tps_frac int 1 run scoreboard players get #TPS math
execute if score #TPS math matches 10.. run data modify storage temp sidebar.tps_0 set value ""
execute unless score #TPS math matches 10.. run data modify storage temp sidebar.tps_0 set value "0"
# entity count
execute store result storage temp sidebar.entity_count int 1 if entity @e

function code:update_sidebar.macro with storage temp sidebar