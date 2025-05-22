# called with $(uuid), $(x), $(y), $(id) (plot id)
data modify storage storage tiles set value []
$scoreboard players set .rx math $(x)
$scoreboard players set .ry math $(y)
$execute as @e[type=marker,tag=block,scores={id=$(id)}] at @s run function code:plots/save.tile

# save tiles to player
data modify storage storage player.tiles set from storage storage tiles

# remove all items from plot
$execute if score #backup math matches 0 run kill @e[type=item_display,tag=item,scores={id=$(id)}]
$execute positioned $(x) 0 $(y) run data modify block ~2 ~1 ~2 front_text.messages[3] set value '{"text":"Offline","color":"red"}'

# run destroied
execute if score #backup math matches 0 run function code:destroied