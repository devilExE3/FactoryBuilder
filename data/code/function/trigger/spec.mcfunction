tag @s add executor
execute as @s[gamemode=spectator] at @s as @e[type=item_display,tag=playerhead,x=0] if score @s id = @p[tag=executor] id run kill @s
tag @s remove executor
execute as @s[gamemode=spectator] run return run function code:trigger/spec.adventure
function code:trigger/spec.make_head
gamemode spectator @s
tellraw @s[scores={settings.chat_notifications=0}] [{"text":"\u2139 You can leave spectator mode by using ","color": "yellow"},{"text":"/trigger spec","underlined": true,"click_event": {"action": "run_command","command": "/trigger spec"},"color": "white"},{"text": " again","color": "yellow"}]