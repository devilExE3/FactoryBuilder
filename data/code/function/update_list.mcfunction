function numeral:ext/lda
function numeral:format
function code:update_list.macro with storage numeral:io
# income thing
execute store result storage numeral:io B[0] int 1 run scoreboard players get @s prev_money.0
execute store result storage numeral:io B[1] int 1 run scoreboard players get @s prev_money.1
execute store result storage numeral:io B[2] int 1 run scoreboard players get @s prev_money.2
execute store result storage numeral:io B[3] int 1 run scoreboard players get @s prev_money.3
# money didn't change
execute if function numeral:equals run return run title @s actionbar [{"text":"Money: ","color":"white"},{"text": "$","color": "green"},{"storage":"numeral:io","nbt":"format","color": "green"}]
data modify storage temp actionbar.money set from storage numeral:io format
# money increase
execute if function numeral:gte run return run function code:update_list.income
# money decrease
function code:update_list.decome