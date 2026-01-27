# gamerules
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule doDaylightCycle true
gamerule doWeatherCycle false
gamerule randomTickSpeed 0
gamerule maxCommandChainLength 2147483647
gamerule maxCommandForkCount 2147483647
gamerule fallDamage false
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
gamerule disablePlayerMovementCheck true
gamerule sendCommandFeedback false
gamerule locatorBar false

# objectives
scoreboard objectives add math dummy
scoreboard players set #-1 math -1
scoreboard players set #2 math 2
scoreboard players set #4 math 4
scoreboard players set #10 math 10
scoreboard players set #16 math 16
scoreboard players set #20 math 20
scoreboard players set #32 math 32
scoreboard players set #90 math 90
scoreboard players set #100 math 100
scoreboard players set #256 math 256
scoreboard players set #360 math 360
scoreboard players set #1000 math 1000
scoreboard players set #playercount math 0
scoreboard objectives add plot.x dummy
scoreboard objectives add plot.y dummy

scoreboard objectives add count dummy
scoreboard objectives add prev_count dummy
scoreboard objectives add stagger dummy
scoreboard players set #tick stagger 0
scoreboard objectives add timer dummy
scoreboard players add #timer timer 1
scoreboard objectives add id dummy
execute unless score #last_id id matches 0.. run scoreboard players set #last_id id 0
scoreboard objectives add money.0 dummy
scoreboard objectives add money.1 dummy
scoreboard objectives add money.2 dummy
scoreboard objectives add money.3 dummy
scoreboard objectives add prev_money.0 dummy
scoreboard objectives add prev_money.1 dummy
scoreboard objectives add prev_money.2 dummy
scoreboard objectives add prev_money.3 dummy

scoreboard objectives add stats.playtime dummy
scoreboard objectives add list dummy
scoreboard objectives setdisplay list list

scoreboard objectives remove used.pickaxe
scoreboard objectives add used.pickaxe used:netherite_pickaxe
scoreboard objectives add shop_page dummy
scoreboard objectives add death deathCount
scoreboard objectives add death_wait dummy

scoreboard objectives add block.owner0 dummy
scoreboard objectives add block.owner1 dummy
scoreboard objectives add block.owner2 dummy
scoreboard objectives add block.owner3 dummy

scoreboard objectives add changelog dummy

# triggers
scoreboard objectives add plot trigger
scoreboard objectives add spawn trigger
scoreboard objectives add kill_items trigger
scoreboard objectives add reload_plot trigger
scoreboard objectives add wipe_plot trigger
scoreboard objectives add export_plot trigger
scoreboard objectives add spec trigger
scoreboard objectives add shrink trigger
scoreboard objectives add settings.chat_notifications trigger
scoreboard objectives add settings.alert_zero_production trigger
scoreboard objectives add z_show_recipe dummy
scoreboard objectives add chicken_tp trigger

# default teams
team add default
team modify default collisionRule never
team modify default deathMessageVisibility never

team add spec_head
team modify spec_head prefix {"text":"<SPEC> ","color": "gray"}

# dropped item color
team add yellow
team modify yellow color yellow

# prefix teams
team add a_dev
team modify a_dev collisionRule never
team modify a_dev prefix {"text":"ᴅᴇᴠ ","color":"red"}
team modify a_dev deathMessageVisibility never

team add b_recipes
team modify b_recipes collisionRule never
team modify b_recipes prefix {"text":"ʀᴇᴄɪᴘᴇѕ ","color":"green"}
team modify b_recipes deathMessageVisibility never

team add c_artist
team modify c_artist collisionRule never
team modify c_artist prefix {"text":"ᴀʀᴛɪѕᴛ ","color":"yellow"}
team modify c_artist deathMessageVisibility never
# is_artist

team add d_tester
team modify d_tester collisionRule never
team modify d_tester prefix {"text":"ᴛᴇѕᴛᴇʀ ","color": "aqua"}
team modify d_tester deathMessageVisibility never

team add e_xm
team modify e_xm collisionRule never
team modify e_xm prefix {"text":"xᴍ ","color":"#FF33FF"}
team modify e_xm deathMessageVisibility never

team add f_fm2
team modify f_fm2 collisionRule never
team modify f_fm2 prefix [{"text":"ꜰᴍ","color":"#8888FF"},{"text":"² ","color":"#BA094A"}]
team modify f_fm2 deathMessageVisibility never

team add g_fm
team modify g_fm collisionRule never
team modify g_fm prefix {"text":"ꜰᴍ ","color":"#8888FF"}
team modify g_fm deathMessageVisibility never

team add h_am
team modify h_am collisionRule never
team modify h_am prefix {"text":"ᴀᴍ ","color":"#98FDB5"}
team modify h_am deathMessageVisibility never

# auxiliary blocks
forceload add 29999999 0
function code:shop_pages
function code:jei/barrels

# purge plots
scoreboard players set #purged math 0
execute as @e[type=#code:block,tag=block,x=0] at @s run function code:plots/purge
function code:destroied
say Reloaded
tellraw @a [{"text":"\u2139 ","color":"green"},{"text":"Purged ","color":"white"},{"score": {"name": "#purged","objective": "math"},"color": "green"},{"text": " stray blocks.","color":"white"}]

kill @e[type=item_display,tag=item,x=0]

# tick functions
schedule function code:tick 1t replace
schedule function code:tick_1s 20t replace
schedule function code:tick_5s 100t replace
schedule function code:tick_60s 60s replace
schedule function code:backups 1800s replace

# reset online list
data modify storage online online set value []

# setup sidebar
function code:load.sidebar

# load spawn plot
fill -16 0 -16 31 0 31 grass_block
fill -15 0 -15 30 0 30 smooth_stone
fill -14 0 -14 29 0 29 stone_bricks