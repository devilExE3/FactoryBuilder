GENERATORS = [
    {
        "name": "Oak Tree Farm",
        "model": "oak_sapling",
        "output": "oak_log",
        "type": "tree",
        "gen_model": "oak_sapling",
        "price": 150,
        "id": "oak"
    },
    {
        "name": "Cobblestone Farm",
        "model": "cobblestone",
        "output": "cobblestone",
        "type": "ore",
        "gen_model": "stone",
        "price": 500,
        "id": "stone"
    }
]

ITEMS = {
    "oak_log": 5,
    "oak_planks": 3,
    "oak_slab": 2,
    "stick": 1,
    "charcoal": 25,
    "cobblestone": 20,
    "stone": 50,
    "smooth_stone": 75
}

RECIPES = [
    # cutter recipes
    {
        "type": "cutter",
        "input": "oak_log",
        "output": "oak_planks",
        "mul": 4
    },
    {
        "type": "cutter",
        "input": "oak_planks",
        "output": "oak_slab",
        "mul": 2
    },
    {
        "type": "cutter",
        "input": "oak_slab",
        "output": "stick",
        "mul": 2
    },

    # furnace recipes
    {
        "type": "furnace",
        "input": "oak_log",
        "output": "charcoal"
    },
    {
        "type": "furnace",
        "input": "cobblestone",
        "output": "stone"
    },
    {
        "type": "furnace",
        "input": "stone",
        "output": "smooth_stone"
    }
]

# templates
TEMPLATE_LOOT_TABLE = ""
with open("generator_templates/loot_table.json", "r") as f:
    TEMPLATE_LOOT_TABLE = f.read()
TEMPLATE_BACKBONE_ORE = ""
with open("generator_templates/backbone_ore.mcfunction", "r") as f:
    TEMPLATE_BACKBONE_ORE = f.read()
TEMPLATE_BACKBONE_TREE = ""
with open("generator_templates/backbone_tree.mcfunction", "r") as f:
    TEMPLATE_BACKBONE_TREE = f.read()
TEMPLATE_FRONTBONE = ""
with open("generator_templates/frontbone.mcfunction", "r") as f:
    TEMPLATE_FRONTBONE = f.read()

for gen in GENERATORS:
    # loot table generator
    with open("data/code/loot_table/blocks/generator/" + gen["id"] + ".json", "w") as f:
        f.write(TEMPLATE_LOOT_TABLE\
                .replace("%name%", gen["name"])\
                .replace("%id%", gen["id"])\
                .replace("%model%", gen["model"]))
    # backbone
    with open("data/code/function/blocks/backbone/generator/" + gen["id"] + ".mcfunction", "w") as f:
        template = ""
        if gen["type"] == "tree":
            template = TEMPLATE_BACKBONE_TREE
        elif gen["type"] == "ore":
            template = TEMPLATE_BACKBONE_ORE
        else:
            print("Unknown generator type " + gen["type"])
            continue
        f.write(template\
                .replace("%gen_model%", gen["gen_model"])\
                .replace("%id%", gen["id"]))
    # frontbone
    with open("data/code/function/blocks/frontbone/generator/" + gen["id"] + ".mcfunction", "w") as f:
        f.write(TEMPLATE_FRONTBONE.replace("%id%", gen["id"]))

# block/destroy.generator
with open("data/code/function/blocks/destroy.generator.mcfunction", "w") as f:
    for gen in GENERATORS:
        f.write("execute as @s[tag=block.generator.%id%] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/generator/%id%\n".replace("%id%", gen['id']))
# block/place.generator
with open("data/code/function/blocks/place.generator.mcfunction", "w") as f:
    for gen in GENERATORS:
        f.write("execute as @s[tag=place.generator.%id%] if score #can_place math matches 0 run loot give @p[tag=rc] loot code:blocks/generator/%id%\nexecute as @s[tag=place.generator.%id%] if score #can_place math matches 1 run function code:blocks/frontbone/generator/%id%\n".replace("%id%", gen["id"]))
# load.tile.backbone.generator
with open("data/code/function/plots/load.tile.backbone.generator.mcfunction", "w") as f:
    for gen in GENERATORS:
        f.write("""execute if data storage temp this{id:"generator.%id%"} run function code:blocks/backbone/generator/%id%\n""".replace("%id%", gen["id"]))
# save.tile.backbone.generator
with open("data/code/function/plots/save.tile.backbone.generator.mcfunction", "w") as f:
    for gen in GENERATORS:
        f.write("""execute as @s[tag=block.generator.%id%] run data modify storage temp this.id set value "generator.%id%"\n""".replace("%id%", gen["id"]))

# logic/generator.item
with open("data/code/function/logic/generator.item.mcfunction", "w") as f:
    for gen in GENERATORS:
        f.write("""execute as @s[tag=block.generator.%id%] unless entity @n[type=item_display,tag=item,distance=..0.01] run summon item_display ~ ~ ~ {item:{id:"%output%",count:1},teleport_duration:20,Tags:["item","item.this"]}\n""".replace("%id%", gen["id"]).replace("%output%", gen["output"]))
        if not gen["output"] in ITEMS:
            print("[gen] Unpriced item " + gen["output"])

# item prices
with open("data/code/function/logic/sell.prices.mcfunction", "w") as f:
    for item in ITEMS:
        f.write("""execute if data entity @s item{id:"minecraft:%id%"} run scoreboard players set #price math %price%\n""".replace("%id%", item).replace("%price%", str(ITEMS[item])))


# # # RECIPES # # #

# Cutter recipes
with open("data/code/function/logic/cutter.recipes.mcfunction", "w") as f:
    for recipe in RECIPES:
        if recipe["type"] != "cutter":
            continue
        f.write("""execute if data entity @s item{id:"minecraft:%input%"} run scoreboard players set #mul math %mul%\nexecute if data entity @s item{id:"minecraft:%input%"} run return run data modify entity @s item.id set value "minecraft:%output%"\n"""\
                .replace("%input%", recipe["input"]).replace("%output%", recipe["output"]).replace("%mul%", str(recipe["mul"])))
        if not recipe["output"] in ITEMS:
            print("[recipe/cutter] Unpriced item " + recipe["output"])

# Furnace recipes
with open("data/code/function/logic/furnace.recipes.mcfunction", "w") as f:
    for recipe in RECIPES:
        if recipe["type"] != "furnace":
            continue
        f.write("""execute if data entity @s item{id:"minecraft:%input%"} run return run data modify entity @s item.id set value "minecraft:%output%"\n"""\
                .replace("%input%", recipe["input"]).replace("%output%", recipe["output"]))
        if not recipe["output"] in ITEMS:
            print("[recipe/furnace] Unpriced item " + recipe["output"])
