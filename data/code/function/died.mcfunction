tp @s 0 1 0 -45 0
gamemode adventure @s
data modify entity @s abilities.mayfly set value 1b

# remove stray tags / states
tag @s remove in_plot
tag @s remove holding_shop
tag @s remove shrinked
attribute @s scale base set 1

# remove possible stray entites
tag @s add died
execute as @e[type=chest_minecart,tag=shop] if score @s id = @p[tag=died] id run function code:shop/kill_shop
execute as @e[type=item_display,tag=playerhead] if score @s id = @p[tag=died] id run kill @s
tag @s remove died

scoreboard players set @s death_wait 1