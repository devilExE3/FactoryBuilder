schedule function code:backups 1800s replace
tellraw @a {"text":"Backing up plots, server may lag spike.","color":"light_purple"}
scoreboard players set #backup math 1
execute as @a run function code:backups.save
tellraw @a {"text":"Backup done!","color":"light_purple"}