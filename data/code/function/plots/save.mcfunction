# called with $(uuid), $(x), $(y), $(id) (plot id)
data modify storage tiles tiles set value []
$scoreboard players set #rx math $(x)
$scoreboard players set #ry math $(y)
$execute as @e[type=#code:block,tag=block,scores={id=$(id)}] at @s run function code:plots/save.tile

# save tiles to player
data modify storage player player.tiles set from storage tiles tiles

# remove all items from plot
$execute if score #backup math matches 0 run kill @e[type=item_display,tag=item,scores={id=$(id)}]
# remove plot
$execute if score #backup math matches 0 positioned $(x) 0 $(y) run setblock ~2 ~1 ~2 air
$execute if score #backup math matches 0 positioned $(x) 0 $(y) run fill ~ ~ ~ ~31 ~ ~31 air

# run destroied
execute if score #backup math matches 0 run function code:destroied