# don't need marker entities
kill @n[type=marker,tag=block.this,distance=..1]
data modify entity @n[type=#code:block,tag=block.this,distance=..1] Tags set value ["spawnblock"]
kill @s