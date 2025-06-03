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

execute as @a[gamemode=adventure] at @s run function code:inventory
execute as @a at @s run function code:shop/tick

execute as @a if score @s used.pickaxe matches 1.. run function code:destroied
scoreboard players reset @a used.pickaxe

execute as @a[gamemode=spectator] at @s anchored eyes rotated ~ ~ run function code:tick.spec