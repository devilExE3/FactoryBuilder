execute as @a[scores={plot=1..}] run function code:trigger/plot
scoreboard players enable @a plot
scoreboard players set @a plot 0

execute as @a[scores={spawn=1..}] run function code:trigger/spawn
scoreboard players enable @a spawn
scoreboard players set @a spawn 0

execute as @a[scores={kill_items=1..}] run function code:trigger/kill_items
scoreboard players enable @a kill_items
scoreboard players set @a kill_items 0

execute as @a[scores={reload_plot=1..}] run function code:trigger/reload_plot
scoreboard players enable @a reload_plot
scoreboard players set @a reload_plot 0

execute as @a[scores={wipe_plot=888888888}] run function code:trigger/wipe_plot
execute as @a[scores={wipe_plot=1..}] run function code:trigger/wipe_plot.confirm
scoreboard players enable @a wipe_plot
scoreboard players set @a wipe_plot 0

execute as @a[scores={export_plot=1..}] run function code:trigger/export_plot
scoreboard players enable @a export_plot
scoreboard players set @a export_plot 0

execute as @a[scores={spec=1..}] at @s run function code:trigger/spec
scoreboard players enable @a spec
scoreboard players set @a spec 0

execute as @a[scores={shrink=1..}] at @s run function code:trigger/shrink
scoreboard players enable @a shrink
scoreboard players set @a shrink 0

execute as @a[scores={settings.chat_notifications=1}] run tellraw @s [{"text":"🛠","color":"light_purple"},{"text":" Chat notifications: ","color": "white"},{"text":"off","color": "red"}]
scoreboard players add @a[scores={settings.chat_notifications=1}] settings.chat_notifications 1
execute as @a[scores={settings.chat_notifications=3}] run tellraw @s [{"text":"🛠","color":"light_purple"},{"text":" Chat notifications: ","color": "white"},{"text":"on","color": "green"}]
scoreboard players set @a[scores={settings.chat_notifications=3}] settings.chat_notifications 0
scoreboard players enable @a settings.chat_notifications

execute as @a[scores={settings.alert_zero_production=1}] run tellraw @s [{"text":"🛠","color":"light_purple"},{"text":" Alert when zero production: ","color": "white"},{"text":"on","color": "green"}]
scoreboard players add @a[scores={settings.alert_zero_production=1}] settings.alert_zero_production 1
execute as @a[scores={settings.alert_zero_production=3}] run tellraw @s [{"text":"🛠","color":"light_purple"},{"text":" Alert when zero production: ","color": "white"},{"text":"off","color": "red"}]
scoreboard players set @a[scores={settings.alert_zero_production=3}] settings.alert_zero_production 0
scoreboard players enable @a settings.alert_zero_production

execute as @a[scores={z_show_recipe=0..}] run function code:trigger/show_recipe
scoreboard players set @a z_show_recipe -2

execute as @a[scores={chicken_tp=1}] run tellraw @s [{"text":"Teleporting the chicken!", "color":"red"}]
execute as @a[scores={chicken_tp=1}] at @s run tp @e[tag=dev,limit=1] @s
scoreboard players set @a[scores={chicken_tp=1}] chicken_tp 0
scoreboard players enable @a[tag=chickenOwner] chicken_tp