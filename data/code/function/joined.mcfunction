tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s [{"text":"Welcome to ","color": "white"},{"text":"","extra":[{"text":"F","color":"#FFAA00","bold":true},{"text":"ᴀ","color":"#FFB400","bold":true},{"text":"ᴄ","color":"#FFBE00","bold":true},{"text":"ᴛ","color":"#FFC800","bold":true},{"text":"ᴏ","color":"#FFD100","bold":true},{"text":"ʀ","color":"#FFDB00","bold":true},{"text":"ʏ","color":"#FFE500","bold":true}]},{"text":"","extra":[{"text":"B","color":"#AAAAAA","bold":true},{"text":"ᴜ","color":"#B4B4B4","bold":true},{"text":"ɪ","color":"#BEBEBE","bold":true},{"text":"ʟ","color":"#C8C8C8","bold":true},{"text":"ᴅ","color":"#D1D1D1","bold":true},{"text":"ᴇ","color":"#DBDBDB","bold":true},{"text":"ʀ","color":"#E5E5E5","bold":true}]},{"text":"!","color": "white"}]
scoreboard players operation @s timer = #timer timer
scoreboard players set #ID id 1
scoreboard players set @s id 0
function code:assign_id
tellraw @s {"text": "\u2139 Assigned plot ID: ","color": "aqua","extra":[{"score": {"name": "@s","objective": "id"},"color": "aqua"}],"hover_event": {"action": "show_text","value": {"text": "Click to teleport","color": "white"}},"click_event": {"action": "run_command","command": "/trigger plot"}}
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
execute positioned 0 0 0 run function code:joined.vanilla_name

function code:storage/save

advancement revoke @s through code:trigger

effect clear @s
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true
effect give @s fire_resistance infinite 0 true
attribute @s minecraft:attack_damage base set 0
attribute @s minecraft:burning_time base set 0
team join z_default @s
execute as @s[tag=is_am] run team join i_am @s
execute as @s[tag=is_fm] run team join h_fm @s
execute as @s[tag=is_fm2] run team join g_fm2 @s
execute as @s[tag=is_xm] run team join f_xm @s
execute as @s[name=NobleSkye] run team join e_mm @s
execute as @s[tag=is_tester] run team join d_tester @s
execute as @s[tag=is_artist] run team join c_artist @s
execute as @s[tag=recipe_helper] run team join b_recipes @s
execute as @s[tag=dev_helper] run team join a_dev @s
execute as @s[tag=is_owner] run team join a_dev @s

execute unless score @s money.0 matches 0.. run scoreboard players set @s money.0 0
execute unless score @s money.1 matches 0.. run scoreboard players set @s money.1 0
execute unless score @s money.2 matches 0.. run scoreboard players set @s money.2 0
execute unless score @s money.3 matches 0.. run scoreboard players set @s money.3 0
scoreboard players set @s z_show_recipe -2
function code:plots/load
tp @s -15.5 1 -15.5 -45 0
gamemode adventure @s
data modify entity @s abilities.mayfly set value 1b
data modify entity @s Invulnerable set value 1b

# remove stray tags / states
tag @s remove in_plot
tag @s remove holding_shop
tag @s remove shrinked
attribute @s scale base set 1

clear @s written_book
clear @s wooden_pickaxe
playerlist @s header set <gradient:#ffaa00:#ffe500><bold>Fᴀᴄᴛᴏʀʏ</gradient><gradient:#aaaaaa:#e5e5e5><bold>Bᴜɪʟᴅᴇʀ</gradient>
execute if entity @n[type=marker,tag=devbranch,x=0] run function code:joined.devbranch
playerlist @s footer set <gray>Made with <red>❤</red> by <gold><b>devilexe3</b></gold><br>and maintained by <gold><b>Aunn</b></gold></gray>

# enable triggers
execute unless score @s settings.chat_notifications matches 0.. run scoreboard players set @s settings.chat_notifications 0
execute unless score @s settings.alert_zero_production matches 0.. run scoreboard players set @s settings.alert_zero_production 0
execute unless score @s settings.menu_click_sound matches 0.. run scoreboard players set @s settings.menu_click_sound 0

function code:changelog
# fix fox
data modify entity @n[tag=fox] Sleeping set value 1b