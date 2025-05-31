data modify storage storage copy set from storage storage online
execute as @a run function code:disconnect/deref with entity @s
execute if data storage storage copy[0] run function code:disconnect/disconnected with storage storage copy[0]