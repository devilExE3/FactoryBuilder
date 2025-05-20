# Beginners Guide To Datapacks and This Server
To get started, look in ``data/code/functions/load.mcfunction`` and ``data/code/functions/tick.mcfunction``.
Write some commands, then run ``/reload`` in game to see your changes.

# Useful Links:
Datapack Tools + Guides: https://misode.github.io/

List of Possible Data Folders (functions, advancements, etc.): https://minecraft.wiki/w/Data_pack#data

Advancement Generator: https://misode.github.io/advancement/

List of Advancement Triggers: https://minecraft.wiki/w/Advancement/JSON_format#List_of_triggers

Predicate Generator: https://misode.github.io/predicate/

Item Commands converter (pre 1.20.5  to 1.20.5/1.20.6 components format):
https://docs.papermc.io/misc/tools/item-command-converter

# Tips

## Snake Case
Files/folders in datapacks MUST be named using snake_case. Lowercase letters, numbers, and underscores ONLY!
- NO:  MyFunction.mcfunction
- YES: my_function.mcfunction