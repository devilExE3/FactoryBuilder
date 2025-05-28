schedule function code:tick 1t replace

scoreboard players add @a timer 1
scoreboard players add .timer timer 1
execute as @a unless score @s timer = .timer timer run function code:joined

function code:triggers

execute as @a run function code:plots/in_plot

# check for players that left
data modify storage storage copy set from storage storage online
execute as @a run function code:disconnect/deref with entity @s
execute if data storage storage copy[0] run function code:disconnect/disconnected with storage storage copy[0]

execute as @a[gamemode=adventure] at @s run function code:inventory
execute as @a at @s run function code:shop/tick

execute as @a if score @s used.pickaxe matches 1.. run function code:destroied
scoreboard players reset @a used.pickaxe

execute as @a[gamemode=spectator] at @s anchored eyes rotated ~ ~ run function code:tick.spec