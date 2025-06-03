scoreboard objectives add sidebar dummy [{"text": "Factory ","bold": true,"color": "gold"},{"text": "Builder","bold": true,"color": "gray"}]
scoreboard objectives setdisplay sidebar sidebar
scoreboard objectives modify sidebar numberformat blank
scoreboard players reset * sidebar
scoreboard players set .0 sidebar 0
scoreboard players display name .0 sidebar ""
scoreboard players set .1 sidebar -1
scoreboard players display name .1 sidebar ""
scoreboard players set .2 sidebar -2
scoreboard players display name .2 sidebar ""
scoreboard players set .3 sidebar -3
scoreboard players display name .3 sidebar ""
scoreboard players set .4 sidebar -4
scoreboard players display name .4 sidebar ""