data modify storage online copy set from storage online online
execute as @a run function code:disconnect/deref with entity @s
execute if data storage online copy[0] run function code:disconnect/disconnected with storage online copy[0]

# remove possible stray entities
execute as @e[type=item_display,tag=playerhead] at @s run function code:disconnect/id_check_and_kill
execute as @e[type=chest_minecart,tag=shop] at @s run function code:disconnect/id_check_and_kill