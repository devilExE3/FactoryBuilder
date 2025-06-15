tellraw @s ""
tellraw @s ""
tellraw @s [" "," ",{"text":"Are you sure you want to wipe your plot?","color": "gold","bold": true}]
tellraw @s [" "," "," "," "," "," ",{"text":"Click to confirm: ","color": "gray"}," "," "," "," "," "," "," "," "," "," "," "," ",{"text":"[ ","color": "red","bold": false,"extra":[{"text":"♻ Wipe Plot","color": "red","bold": true},{"text":" ]","color": "red","bold": false}],"clickEvent": {"action": "run_command","value": "/trigger wipe_plot set 888888888"},"hoverEvent": {"action": "show_text","contents": [{"text":"Once you click this your\nplot will get destroied\n\nYou will get all items."}]}}]
tellraw @s ""