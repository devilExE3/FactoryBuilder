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

# objectives
scoreboard objectives add math dummy
scoreboard players set #-1 math -1
scoreboard players set #2 math 2
scoreboard players set #4 math 4
scoreboard players set #10 math 10
scoreboard players set #16 math 16
scoreboard players set #32 math 32
scoreboard players set #90 math 90
scoreboard players set #100 math 100
scoreboard players set #1000 math 1000
scoreboard players set #playercount math 0
scoreboard objectives add plot.x dummy
scoreboard objectives add plot.y dummy

scoreboard objectives add count dummy
scoreboard objectives add prev_count dummy
scoreboard objectives add stagger dummy
scoreboard players set #stagger stagger 0
scoreboard players set #tick stagger 0
scoreboard players set #wait stagger 0
scoreboard objectives add timer dummy
scoreboard players add #timer timer 1
scoreboard objectives add id dummy
execute unless score #last_id id matches 0.. run scoreboard players set #last_id id 0
scoreboard objectives add money dummy
scoreboard objectives add prev_money dummy

scoreboard objectives add stats.playtime dummy
scoreboard objectives add list dummy
scoreboard objectives setdisplay list list

scoreboard objectives add used.pickaxe used:wooden_pickaxe
scoreboard objectives add shop_page dummy
scoreboard objectives add death deathCount
scoreboard objectives add death_wait dummy

scoreboard objectives add block.owner0 dummy
scoreboard objectives add block.owner1 dummy
scoreboard objectives add block.owner2 dummy
scoreboard objectives add block.owner3 dummy

# triggers
scoreboard objectives add plot trigger
scoreboard objectives add spawn trigger
scoreboard objectives add kill_items trigger
scoreboard objectives add reload_plot trigger
scoreboard objectives add wipe_plot trigger
scoreboard objectives add spec trigger
scoreboard objectives add shrink trigger
scoreboard objectives add book trigger

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
team add dev
team modify dev collisionRule never
team modify dev prefix {"text":"ᴅᴇᴠ ","color":"red"}
team modify dev deathMessageVisibility never

team add am
team modify am collisionRule never
team modify am prefix {"text":"ᴀᴍ ","color":"#96f9b2"}
team modify am deathMessageVisibility never

team add fm
team modify fm collisionRule never
team modify fm prefix {"text":"ꜰᴍ ","color":"#8686fb"}
team modify fm deathMessageVisibility never

# auxiliary blocks
forceload add 29999999 0
function code:shop_pages

# purge plots
scoreboard players set #purged math 0
execute as @e[type=#code:block,tag=block] at @s run function code:plots/purge
function code:destroied
say Reloaded
tellraw @a [{"text":"\u2139 ","color":"green"},{"text":"Purged ","color":"white"},{"score": {"name": "#purged","objective": "math"},"color": "green"},{"text": " stray blocks.","color":"white"}]

kill @e[type=item_display,tag=item]

# tick functions
schedule function code:tick 1t replace
schedule function code:tick_1s 1s replace
schedule function code:backups 1800s replace
schedule function code:stagger 2s replace

tp @e[type=chest_minecart,tag=shop] 0 -64 0
kill @e[type=chest_minecart,tag=shop]

# reset online list
data modify storage online online set value []

# setup sidebar
function code:load.sidebar