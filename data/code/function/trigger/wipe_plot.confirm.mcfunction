tellraw @s ""
tellraw @s ""
tellraw @s [" "," ",{"text":"Are you sure you want to wipe your plot?","color": "gold","bold": true}]
tellraw @s [" "," "," "," "," "," ",{"text":"Click to confirm: ","color": "gray"}," "," "," "," "," "," "," "," "," "," "," "," ",{"text":"[ ","color": "red","bold": false,"extra":[{"text":"♻ Wipe Plot","color": "red","bold": true},{"text":" ]","color": "red","bold": false}],"click_event": {"action": "run_command","command": "/trigger wipe_plot set 888888888"},"hover_event": {"action": "show_text","value": [{"text":"Once you click this your\nplot will get destroied\n\nYou will get all items."}]}}]
tellraw @s ""