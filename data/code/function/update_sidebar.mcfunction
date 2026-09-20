# playercount
execute store result storage temp sidebar.playercount int 1 run scoreboard players get #playercount math
# tps color
execute if score #TPS math matches 1900.. run data modify storage temp sidebar.tps_color set value "green"
execute if score #TPS math matches 1600..1899 run data modify storage temp sidebar.tps_color set value "yellow"
execute if score #TPS math matches 1200..1599 run data modify storage temp sidebar.tps_color set value "#ff6600"
execute if score #TPS math matches ..1199 run data modify storage temp sidebar.tps_color set value "red"
# format tps display
# calculate whole and frac part of TPS
execute store result storage temp sidebar.tps_whole int 0.01 run scoreboard players get #TPS math
# frac part
scoreboard players operation #TPS.frac math = #TPS math
scoreboard players operation #TPS.frac math %= #100 math
execute store result storage temp sidebar.tps_frac int 1 run scoreboard players get #TPS.frac math
execute if score #TPS.frac math matches 10.. run data modify storage temp sidebar.tps_0 set value ""
execute unless score #TPS.frac math matches 10.. run data modify storage temp sidebar.tps_0 set value "0"
# entity count
execute store result storage temp sidebar.entity_count int 1 if entity @e[x=0]

function code:update_sidebar.macro with storage temp sidebar
