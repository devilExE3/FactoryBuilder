tellraw @a {"text":""}
tellraw @a {"text":""}
tellraw @a [" "," "," ",{"text":"The server is reloading.","color":"red","bold":true}]
tellraw @a [" "," "," ",{"text":"As a consequence your plot will get re-loaded.","color":"light_purple"}]
tellraw @a [" "," "," ",{"text":"Please be patient this might take a while.","color":"light_purple"}]
execute as @a run function code:reload.player

# why can't i /reload btw
tellraw @s {"click_event":{"action":"run_command","command":"/reload"},"hover_event":{"action":"show_text","value":[{"text":"Click to run"}]},"text":"Run /reload"}