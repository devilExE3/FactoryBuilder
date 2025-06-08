# called with $(uuid), $(x), $(y), $(id) (plot id)
data modify storage tiles tiles set value []
$scoreboard players set #rx math $(x)
$scoreboard players set #ry math $(y)
$execute positioned $(x).0 0 $(y).0 positioned ~8.0 ~ ~8.0 as @e[type=#code:block,tag=block,sort=nearest,scores={id=$(id)},distance=..13] at @s run function code:plots/save.tile

# save tiles to player
data modify storage player player.tiles set from storage tiles tiles

# remove all items from plot
$execute if score #backup math matches 0 run kill @e[type=item_display,tag=item,scores={id=$(id)},x=0]
# remove plot
$execute if score #backup math matches 0 positioned $(x) 0 $(y) run setblock ~1 ~1 ~1 air
$execute if score #backup math matches 0 positioned $(x) 0 $(y) run fill ~ ~ ~ ~15 ~ ~15 air

# run destroied
execute if score #backup math matches 0 run function code:destroied