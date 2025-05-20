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