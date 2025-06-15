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
team add adev
team modify adev collisionRule never
team modify adev prefix {"text":"ᴅᴇᴠ ","color":"red"}
team modify adev deathMessageVisibility never

team add aerecipes
team modify aerecipes collisionRule never
team modify aerecipes prefix {"text":"ʀᴇᴄɪᴘᴇѕ ","color":"green"}
team modify aerecipes deathMessageVisibility never

team add aesartist
team modify aesartist collisionRule never
team modify aesartist prefix {"text":"ᴀʀᴛɪѕᴛ ","color":"yellow"}
team modify aesartist deathMessageVisibility never
# is_artist

team add aetester
team modify aetester collisionRule never
team modify aetester prefix {"text":"ᴛᴇѕᴛᴇʀ ","color": "aqua"}
team modify aetester deathMessageVisibility never

team add afm
team modify afm collisionRule never
team modify afm prefix {"text":"ꜰᴍ ","color":"#8686fb"}
team modify afm deathMessageVisibility never

team add am
team modify am collisionRule never
team modify am prefix {"text":"ᴀᴍ ","color":"#96f9b2"}
team modify am deathMessageVisibility never

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
schedule function code:backups 1800s replace

# reset online list
data modify storage online online set value []

# setup sidebar
function code:load.sidebar

# load spawn plot
fill -16 0 -16 31 0 31 grass_block
fill -15 0 -15 30 0 30 smooth_stone
fill -14 0 -14 29 0 29 stone_bricks