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

execute as @a[scores={wipe_plot_be_careful_it_goes_poof_no_confirm=1..}] run function code:trigger/wipe_plot
scoreboard players enable @a wipe_plot_be_careful_it_goes_poof_no_confirm
scoreboard players set @a wipe_plot_be_careful_it_goes_poof_no_confirm 0

execute as @a[scores={spec=1..}] at @s run function code:trigger/spec
scoreboard players enable @a spec
scoreboard players set @a spec 0