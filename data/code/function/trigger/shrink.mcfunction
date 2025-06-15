execute as @s[tag=shrinked] run attribute @s scale base set 1
execute as @s[tag=shrinked] run return run tag @s remove shrinked
attribute @s scale base set 0.45
tag @s add shrinked
tellraw @s[scores={settings.chat_notifications=0}] [{"text":"\u2139 You can unshrink by using ","color": "yellow"},{"text":"/trigger shrink","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger shrink"},"color": "white"},{"text": " again","color": "yellow"}]