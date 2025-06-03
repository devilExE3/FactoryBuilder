tag @s add score
execute as @e[type=#code:block,tag=block] if score @s id = @p[tag=score] id at @s run setblock ~ ~ ~ air destroy
tag @s remove score

function code:destroied
tellraw @s {"text":"Your plot has been wiped!","color":"green"}

scoreboard players set @s wipe_plot 0