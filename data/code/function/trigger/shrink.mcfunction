execute as @s[tag=shrinked] run attribute @s scale base set 1
execute as @s[tag=shrinked] run return run tag @s remove shrinked
attribute @s scale base set 0.5
tag @s add shrinked