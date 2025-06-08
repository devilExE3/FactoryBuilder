data modify storage online copy set from storage online online
execute as @a run function code:disconnect/deref with entity @s
execute if data storage online copy[0] run function code:disconnect/disconnected with storage online copy[0]

# remove possible stray entities
execute as @e[type=item_display,tag=playerhead,x=0] at @s run function code:disconnect/id_check_and_kill