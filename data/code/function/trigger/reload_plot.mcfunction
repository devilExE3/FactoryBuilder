data modify storage temp uuid.uuid set from entity @s UUID
function code:disconnect/disconnected with storage temp uuid
function code:destroied
function code:joined
tellraw @s [{"text":"Reloading your plot teleports you to spawn... It's complicated. Use "},{"text":"/trigger plot","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger plot"}}]