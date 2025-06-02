tag @s add executor
execute as @s[gamemode=spectator] at @s as @e[type=item_display,tag=playerhead,distance=..15] if score @s id = @p[tag=executor] id run kill @s
tag @s remove executor
execute as @s[gamemode=spectator] run return run gamemode adventure @s
function code:trigger/spec.make_head
gamemode spectator @s
tellraw @s [{"text":"\u2139 You can leave spectator mode by using ","color": "yellow"},{"text":"/trigger spec","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger spec"},"color": "white"},{"text": " again","color": "yellow"}]