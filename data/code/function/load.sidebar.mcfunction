scoreboard objectives add sidebar dummy
scoreboard objectives modify sidebar displayname [{"text":"","extra":[{"text":"F","color":"#FFAA00","bold":true},{"text":"ᴀ","color":"#FFB400","bold":true},{"text":"ᴄ","color":"#FFBE00","bold":true},{"text":"ᴛ","color":"#FFC800","bold":true},{"text":"ᴏ","color":"#FFD100","bold":true},{"text":"ʀ","color":"#FFDB00","bold":true},{"text":"ʏ","color":"#FFE500","bold":true}]},{"text":"","extra":[{"text":"B","color":"#AAAAAA","bold":true},{"text":"ᴜ","color":"#B4B4B4","bold":true},{"text":"ɪ","color":"#BEBEBE","bold":true},{"text":"ʟ","color":"#C8C8C8","bold":true},{"text":"ᴅ","color":"#D1D1D1","bold":true},{"text":"ᴇ","color":"#DBDBDB","bold":true},{"text":"ʀ","color":"#E5E5E5","bold":true}]}]
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
execute if entity @n[type=marker,tag=devbranch,x=0] run scoreboard players display name .footer sidebar [" "," "," "," "," "," "," "," "," "," ",{"text":"DevBranch","color": "gold","italic": true}]