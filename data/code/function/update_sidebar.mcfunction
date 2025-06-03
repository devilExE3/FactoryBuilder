scoreboard players display name .1 sidebar [{"text":"Online: ","color": "gray"},{"score": {"name": "#playercount","objective": "math"},"color": "gold"}]
function code:update_sidebar.macro2 with storage temp tps
execute store result score #entity_count math if entity @e
scoreboard players display name .3 sidebar [{"text":"Entities: ","color": "gray"},{"score": {"name": "#entity_count","objective": "math"},"color": "gold"}]