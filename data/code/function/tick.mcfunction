schedule function code:tick 1t

scoreboard players add @a timer 1
scoreboard players add .timer timer 1
execute as @a unless score @s timer = .timer timer run function code:joined

function code:triggers

execute as @e[type=#code:block,tag=block] at @s if block ~ ~ ~ air run function code:blocks/destroy

execute as @a run function code:plots/in_plot

# check for players that left
data modify storage storage copy set from storage storage online
execute as @a run function code:disconnect/deref with entity @s
execute if data storage storage copy[0] run function code:disconnect/disconnected with storage storage copy[0]

execute as @a[gamemode=adventure] at @s run function code:inventory
execute as @a at @s run function code:shop/tick