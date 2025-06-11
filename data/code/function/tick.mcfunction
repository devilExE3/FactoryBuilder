schedule function code:tick 1t replace

scoreboard players add @a timer 1
scoreboard players add #timer timer 1
execute as @a unless score @s timer = #timer timer run function code:joined

function code:triggers

execute as @a run function code:plots/in_plot

# check for players that left
scoreboard players operation #old_playercount math = #playercount math
execute store result score #playercount math if entity @a
execute if score #old_playercount math > #playercount math run function code:disconnect/run

execute as @a at @s run function code:shop/tick
execute as @a[gamemode=adventure] at @s run function code:inventory

execute if entity @a[scores={used.pickaxe=1..}] run function code:destroied

execute as @a[gamemode=spectator] at @s anchored eyes rotated ~ ~ run function code:tick.spec

scoreboard players add @a[scores={death_wait=1..}] death_wait 1
execute as @a[scores={death_wait=20..}] run function code:died.effects
scoreboard players reset @a[scores={death_wait=20..}] death_wait
execute as @a[scores={death=1..}] run function code:died
scoreboard players reset @a death

scoreboard players set #gmc math 0
execute as @a[gamemode=creative,x=0] run scoreboard players set #gmc math 1
execute if score #gmc math matches 1 as @e[type=#code:block,tag=spawnblock,x=0] at @s if block ~ ~ ~ air run kill @s