GENERATORS = [
    {
        "name": "Oak Tree Farm",
        "model": "oak_sapling",
        "output": "oak_log",
        "gen_block": "petrified_oak_slab[type=double]",
        "price": 150,
        "id": "oak",
        "type": "cross",
        "rp_texture": "minecraft:blocks/oak_sapling"
    },
    {
        "name": "Cobblestone Farm",
        "model": "cobblestone",
        "output": "cobblestone",
        "gen_block": "cobblestone",
        "price": 500,
        "id": "stone",
        "type": "ore",
        "rp_texture": "minecraft:blocks/stone"
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
TEMPLATE_GENERIC_LOOT_TABLE = ""
with open("generator_templates/generic_loot_table.json", "r") as f:
    TEMPLATE_GENERIC_LOOT_TABLE = f.read()
TEMPLATE_BACKBONE = ""
with open("generator_templates/backbone.mcfunction", "r") as f:
    TEMPLATE_BACKBONE = f.read()
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
        f.write(TEMPLATE_BACKBONE\
                .replace("%gen_block%", gen["gen_block"])\
                .replace("%id%", gen["id"]))
    # frontbone
    with open("data/code/function/blocks/frontbone/generator/" + gen["id"] + ".mcfunction", "w") as f:
        f.write(TEMPLATE_FRONTBONE.replace("%id%", gen["id"]))
    # vanilla loot_table
    
    # get block state
    block_state = str(gen["gen_block"])
    if block_state.count("[") > 0:
        block_state = block_state[:block_state.find("[")]
    with open("data/minecraft/loot_table/blocks/" + block_state + ".json", "w") as f:
        f.write(TEMPLATE_GENERIC_LOOT_TABLE)

# tags/block/generators
with open("data/code/tags/block/generators.json", "w") as f:
    f.write('{"values":[')
    first = True
    for gen in GENERATORS:
        if first:
            first = False
        else:
            f.write(",")
        # get block state
        block_state = str(gen["gen_block"])
        if block_state.count("[") > 0:
            block_state = block_state[:block_state.find("[")]
        f.write('"' + block_state + '"')
    f.write("]}")

# block/destroy.generator
with open("data/code/function/blocks/destroy.generator.mcfunction", "w") as f:
    for gen in GENERATORS:
        f.write("execute as @s[tag=block.generator.%id%] run loot replace entity @n[type=item,tag=item.target,distance=..3] container.0 loot code:blocks/generator/%id%\n".replace("%id%", gen['id']))
# block/place.generator
with open("data/code/function/blocks/place.generator.loot.mcfunction", "w") as f:
    for gen in GENERATORS:
        f.write("execute as @s[tag=place.generator.%id%] run loot give @p[tag=rc] loot code:blocks/generator/%id%\n".replace("%id%", gen["id"]))
with open("data/code/function/blocks/place.generator.block.mcfunction", "w") as f:
    for gen in GENERATORS:
        f.write("execute as @s[tag=place.generator.%id%] run function code:blocks/frontbone/generator/%id%\n".replace("%id%", gen["id"]))
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
        f.write("""execute as @s[tag=block.generator.%id%] unless entity @n[type=item_display,tag=item,distance=..0.01] run summon item_display ~ ~ ~ {item:{id:"%output%",count:1},teleport_duration:20,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,-.23f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},view_range:0.25,Tags:["item","item.this"]}\n""".replace("%id%", gen["id"]).replace("%output%", gen["output"]))
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

# generate shop for generators
# page 0 is hardcoded
#pages = 0
#for gen in GENERATORS:
