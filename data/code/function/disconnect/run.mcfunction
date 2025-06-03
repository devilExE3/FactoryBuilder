data modify storage storage copy set from storage storage online
execute as @a run function code:disconnect/deref with entity @s
execute if data storage storage copy[0] run function code:disconnect/disconnected with storage storage copy[0]

# remove possible stray entities
execute as @e[type=item_display,tag=playerhead] at @s run function code:disconnect/id_check_and_kill
execute as @e[type=chest_minecart,tag=shop] at @s run function code:disconnect/id_check_and_kill