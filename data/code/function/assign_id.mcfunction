# check if id is taken
scoreboard players set taken math 0
execute as @a if score @s id = .ID id run scoreboard players set taken math 1
execute if score taken math matches 0 run return run scoreboard players operation @s id = .ID id
# try next id
scoreboard players add .ID id 1
function code:assign_id