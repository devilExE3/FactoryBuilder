# gamerules
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule randomTickSpeed 0
gamerule maxCommandChainLength 2147483647

# objectives
scoreboard objectives add math dummy
scoreboard players set .2 math 2
scoreboard players set .4 math 4
scoreboard players set .32 math 32
scoreboard players set .90 math 90

scoreboard objectives add count dummy
scoreboard objectives add timer dummy
scoreboard players add .timer timer 1
scoreboard objectives add id dummy
execute unless score .last_id id matches 0.. run scoreboard players set .last_id id 0
scoreboard objectives add money dummy

# triggers
scoreboard objectives add plot trigger
scoreboard objectives add spawn trigger
scoreboard objectives add kill_items trigger

# default team
team add default
team modify default collisionRule never
team modify default friendlyFire false

# auxiliary blocks
forceload add 29999999 0
setblock 29999999 -64 0 bedrock
setblock 29999999 -63 0 oak_sign
function code:shop_pages

say Reloaded

# tick functions
schedule function code:tick 1t replace
schedule function code:tick_1s 1s replace
schedule function code:tick_5s 5s replace
schedule function code:backups 1800s replace