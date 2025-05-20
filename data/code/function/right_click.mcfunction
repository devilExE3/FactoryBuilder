advancement revoke @s only code:right_click

tag @s add rc

execute as @e[type=marker,tag=place] at @s align xyz run function code:blocks/place

tag @s remove rc