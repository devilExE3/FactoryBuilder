tellraw @s "Welcome to Factory Builder!"

scoreboard players operation @s timer = .timer timer
execute unless score @s id matches 1.. run function code:assign_id
function code:storage/init
execute unless score @s plot_fix2 matches 1 run function code:joined.fixplot

advancement revoke @s through code:trigger

effect clear @s
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true
team join default @s

execute unless score @s money matches 0.. run scoreboard players set @s money 0
function code:storage/load
function code:plots/load