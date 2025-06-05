scoreboard objectives add sidebar dummy [{"text": "Factory ","bold": true,"color": "gold"},{"text": "Builder","bold": true,"color": "gray"}]
scoreboard objectives setdisplay sidebar sidebar
scoreboard objectives modify sidebar numberformat blank
scoreboard players reset * sidebar
scoreboard players set .sp0 sidebar 0
scoreboard players display name .sp0 sidebar ""
scoreboard players set .1 sidebar -1
scoreboard players display name .1 sidebar ""
scoreboard players set .sp1 sidebar -2
scoreboard players display name .sp1 sidebar ""
scoreboard players set .2 sidebar -3
scoreboard players display name .2 sidebar ""
scoreboard players set .3 sidebar -4
scoreboard players display name .3 sidebar ""
scoreboard players set .sp2 sidebar -5
scoreboard players display name .sp2 sidebar ""
scoreboard players set .footer sidebar -15
scoreboard players display name .footer sidebar [{"text":"Remember to ","color": "gray"},{"text":"/vote","color": "gold"}]