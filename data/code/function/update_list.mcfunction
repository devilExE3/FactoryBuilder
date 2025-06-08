function numeral:ext/lda
function numeral:format
# ,{"text":" (","color": "gray"},{"score":{"name": "@s","objective": "prev_money"},"color": "gray"},{"text":" /s)","color": "gray"}
title @s actionbar [{"text":"Money: ","color":"white"},{"text": "$","color": "green"},{"storage":"numeral:io","nbt":"format","color": "green"}]
execute run return run function code:update_list.macro with storage numeral:io