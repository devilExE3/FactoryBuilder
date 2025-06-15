summon item_display 0 0 0 {UUID:[I;-256700389,-1587590022,-1843606147,1258647690]}
item replace entity f0b3101b-a15f-4c7a-921c-cd7d4b05708a container.0 from entity @s player.cursor
execute store result score @s z_show_recipe run data get entity f0b3101b-a15f-4c7a-921c-cd7d4b05708a item.components."minecraft:custom_data".recipe_id
kill f0b3101b-a15f-4c7a-921c-cd7d4b05708a
item replace entity @s player.cursor with air