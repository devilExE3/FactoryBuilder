tellraw @s "Welcome to Factory Builder!"

scoreboard players operation @s timer = #timer timer
scoreboard players set #ID id 1
scoreboard players set @s id 0
function code:assign_id
tellraw @s {"text": "\u2139 Assigned plot ID: ","color": "aqua","extra":[{"score": {"name": "@s","objective": "id"},"color": "aqua"}],"hoverEvent": {"action": "show_text","contents": {"text": "Click to teleport","color": "white"}},"clickEvent": {"action": "run_command","value": "/trigger plot"}}
function code:storage/init

# calculate plot
function code:storage/load
scoreboard players operation #n math = @s id
function code:math/id_to_coords
scoreboard players operation @s plot.x = #x math
scoreboard players operation @s plot.x *= #16 math
scoreboard players operation @s plot.y = #y math
scoreboard players operation @s plot.y *= #16 math
execute store result storage player player.plot.x int 1 run scoreboard players get @s plot.x
execute store result storage player player.plot.y int 1 run scoreboard players get @s plot.y
execute store result storage player player.plot.id int 1 run scoreboard players get @s id

# update player name
execute if data entity @s bukkit run data modify storage player player.name set from entity @s bukkit.lastKnownName
execute unless data entity @s bukkit positioned 0 0 0 run function code:joined.vanilla_name

function code:storage/save

advancement revoke @s through code:trigger

effect clear @s
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true
attribute @s minecraft:attack_damage base set 0
team join default @s
execute as @s[tag=is_am] run team join am @s
execute as @s[tag=is_fm] run team join fm @s
execute as @s[tag=is_owner] run team join dev @s

execute unless score @s money matches 0.. run scoreboard players set @s money 0
function code:plots/load
tp @s 0 1 0 -45 0
gamemode adventure @s

# remove stray tags / states
tag @s remove in_plot
tag @s remove holding_shop
tag @s remove shrinked
attribute @s scale base set 1

execute at @s run function code:reload_inventory