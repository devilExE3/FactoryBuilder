import os

GENERATORS = [
    {
        "name": "Oak Tree Farm",
        "model": "oak_sapling",
        "output": "oak_log",
        "gen_block": "copper_grate",
        "price": 50,
        "id": "oak",
        "type": "cross",
        "rp_texture": "minecraft:block/oak_sapling"
    },
    {
        "name": "Cobblestone Farm",
        "model": "cobblestone",
        "output": "cobblestone",
        "gen_block": "cobblestone",
        "price": 500,
        "id": "stone",
        "type": "ore",
        "rp_texture": "minecraft:block/stone"
    },
    {
        "name": "Coal Farm",
        "model": "coal_ore",
        "output": "coal",
        "gen_block": "coal_block",
        "price": 100000,
        "id": "coal",
        "type": "ore",
        "rp_texture": "minecraft:block/coal_ore"
    },
    {
        "name": "Birch Farm",
        "model": "birch_sapling",
        "output": "birch_log",
        "gen_block": "yellow_glazed_terracotta",
        "price": 400 * 10 ** 6,
        "id": "birch",
        "type": "cross",
        "rp_texture": "exposed_copper_grate"
    },
    {
        "name": "Copper Farm",
        "model": "copper_ore",
        "output": "raw_copper",
        "gen_block": "copper_block",
        "price": 2.5 * 10 ** 9,
        "id": "copper",
        "type": "ore",
        "rp_texture": "minecraft:block/copper_ore"
    },
    {
        "name": "Iron Farm",
        "model": "iron_ore",
        "output": "raw_iron",
        "gen_block": "iron_block",
        "price": 7.5 * 10 ** 9,
        "id": "iron",
        "type": "ore",
        "rp_texture": "minecraft:block/iron_ore"
    },
    {
        "name": "Netherrack Farm",
        "model": "netherrack",
        "output": "netherrack",
        "gen_block": "netherrack",
        "price": 25 * 10 ** 9,
        "id": "netherrack",
        "type": "ore",
        "rp_texture": "minecraft:block/netherrack"
    },
    {
        "name": "End Stone Farm",
        "model": "end_stone",
        "output": "end_stone",
        "gen_block": "end_stone",
        "price": 10 * 10 ** 12,
        "id": "end_stone",
        "type": "ore",
        "rp_texture": "minecraft:block/end_stone"
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
    "smooth_stone": 75,
    "stone_bricks": 200,
    "coal": 1000,
    "torch": 1500,
    "glowstone": 100_000,
    "birch_log": 1_000_000,
    "birch_wood": 1_300_000,
    "birch_planks": 300_000,
    "birch_slab": 150_000,
    "raw_copper": 1_500_000,
    "copper_ingot": 2_000_000,
    "glowstone_dust": 2_000_000,
    "orange_dye": 5_000_000,
    "gunpowder": 2_500_000,
    "tnt": 3_750_000,
    "coal_block": 5_000_000,
    "raw_iron": 5_000_000,
    "iron_ingot": 10_000_000,
    "anvil": 5_000_000,
    "iron_door": 85_000_000,

    # LuveelVoom
    "gravel": 500,
    "andesite": 1_000,
    "gold_ore": 5_000,
    "raw_gold_block": 25_000,
    "yellow_concrete_powder": 5_000_000,
    "raw_gold": 30_000_000,
    "gold_ingot": 200_000_000,
    "end_stone": 100_000_000,
    "suspicious_sand": 500_000_000,
    "sand": 4_000_000_000,
    "tinted_glass": 10_000_000_000,
    "purpur_block": 50_000_000_000,
    "purpur_pillar": 300_000_000_000,
    "soul_sand": 1_000_000_000_000,
    "soul_soil": 2_000_000_000_000,
    "prismarine": 2_500_000_000_000,
    "ender_pearl": 1_500_000_000_000,
    "netherrack": 1_000_000,
    "nether_bricks": 2_000_000,
    "nether_brick_slab": 3_000_000,
    "nether_brick": 5_000_000,
    "cherry_button": 200_000_000,
    "cherry_slab": 500_000_000,
    "stripped_cherry_wood": 1_300_000_000,
    "cherry_wood": 2_000_000_000,
    "stripped_pale_oak_wood": 4_000_000_000,
    "nether_quartz_ore": 6_000_000_000,
    "quartz_slab": 4_000_000_000,
    "quartz_block": 12_000_000_000,
    "chiseled_quartz_block": 80_000_000_000,
    "quartz": 50_000_000_000,

    # birch rework
    "jungle_slab": 300_000,
    "jungle_planks": 800_000,
    "stripped_jungle_wood": 2_000_000,
    "stripped_mangrove_wood": 3_000_000,
    "stripped_crimson_hyphae": 5_000_000,
    "crimson_hyphae": 10_000_000,
}
ITEM_TRANSLATE = {
    "oak_log": "Oak Log",
    "oak_planks": "Oak Planks",
    "oak_slab": "Oak Slab",
    "stick": "Stick",
    "charcoal": "Charcoal",
    "cobblestone": "Cobblestone",
    "stone": "Stone",
    "smooth_stone": "Smooth Stone",
    "stone_bricks": "Stone Bricks",
    "coal": "Coal",
    "torch": "Torch",
    "glowstone": "Glowstone",
    "birch_log": "Birch Log",
    "birch_wood": "Birch Wood",
    "birch_planks": "Birch Planks",
    "birch_slab": "Birch Slab",
    "raw_copper": "Raw Copper",
    "copper_ingot": "Copper Ingot",
    "glowstone_dust": "Coal-Copper Blend",
    "orange_dye": "Coal-Copper Ingot",
    "gunpowder": "Gunpowder",
    "tnt": "TNT",
    "coal_block": "Coal Block",
    "raw_iron": "Raw Iron",
    "iron_ingot": "Iron Ingot",
    "anvil": "Anvil",
    "iron_door": "Iron Door",

    # LuveelVoom
    "gravel": "Gravel",
    "andesite": "Andesite",
    "gold_ore": "Unrefined Gold Ore",
    "raw_gold_block": "Smithed Gold Ore",
    "yellow_concrete_powder": "Gold Ore Powder",
    "raw_gold": "Gold Ore",
    "gold_ingot": "Gold Ingot",
    "end_stone": "End Stone",
    "suspicious_sand": "Unfiltered Endstone Powder",
    "sand": "Filtered Endstone Powder",
    "tinted_glass": "Ender Glass",
    "purpur_block": "Unchiseled Purpur",
    "purpur_pillar": "Chiseled Purpur",
    "soul_sand": "Ender-Infused Soil",
    "soul_soil": "Hardened Soil",
    "prismarine": "Ender Pearl Clump",
    "ender_pearl": "Ender Pearl",
    "netherrack": "Netherrack",
    "nether_bricks": "Nether Brick Block",
    "nether_brick_slab": "Nether Brick Slab",
    "nether_brick": "Nether Brick",
    "cherry_button": "Uncoagulated Mote",
    "cherry_slab": "Uncoagulated Chunk",
    "stripped_cherry_wood": "Uncoagulated Lump",
    "cherry_wood": "Coagulated Lump",
    "stripped_pale_oak_wood": "Calcified Lump",
    "nether_quartz_ore": "Sparse Nether Quartz",
    "quartz_slab": "Quartz Slab",
    "quartz_block": "Quartz Block",
    "chiseled_quartz_block": "Chieseled Quartz",
    "quartz": "Quartz",

    # birch rework
    "jungle_slab": "Tannin Slice",
    "jungle_planks": "Tannin Clump",
    "stripped_jungle_wood": "Tannin Cluster",
    "stripped_mangrove_wood": "Dehydrated Cluster",
    "stripped_crimson_hyphae": "Inactive Cluster",
    "crimson_hyphae": "Active Hyphae Cluster",
}

RECIPES = {
    "cutter": [
        {
            "input": "oak_log",
            "output": "oak_planks",
            "mul": 4
        },
        {
            "input": "oak_planks",
            "output": "oak_slab",
            "mul": 2
        },
        {
            "input": "oak_slab",
            "output": "stick",
            "mul": 2
        },
        {
            "input": "birch_log",
            "output": "birch_planks",
            "mul": 4
        },
        {
            "input": "birch_planks",
            "output": "birch_slab",
            "mul": 2
        },
        {
            "input": "andesite",
            "output": "gold_ore",
            "mul": 1
        },
        {
            "input": "prismarine",
            "output": "ender_pearl",
            "mul": 4
        },
        {
            "input": "nether_bricks",
            "output": "nether_brick_slab",
            "mul": 2
        },
        {
            "input": "chiseled_quartz_block",
            "output": "quartz",
            "mul": 4
        }
    ],
    "furnace": [
        {
            "input": "oak_log",
            "output": "charcoal"
        },
        {
            "input": "cobblestone",
            "output": "stone"
        },
        {
            "input": "stone",
            "output": "smooth_stone"
        },
        {
            "input": "stripped_jungle_wood",
            "output": "stripped_mangrove_wood"
        },
        {
            "input": "raw_copper",
            "output": "copper_ingot"
        },
        {
            "input": "raw_iron",
            "output": "iron_ingot"
        },
        {
            "input": "glowstone_dust",
            "output": "orange_dye"
        },
        {
            "input": "gunpowder",
            "output": "tnt"
        },
        {
            "input": "gravel",
            "output": "andesite"
        },
        {
            "input": "gold_ore",
            "output": "raw_gold_block"
        },
        {
            "input": "sand",
            "output": "tinted_glass"
        }
    ],
    "crafter_2": [
        {
            "in1": "stick",
            "in2": "coal",
            "out": "torch",
            "count": 4
        },
        {
            "in1": "smooth_stone",
            "in2": "smooth_stone",
            "out": "stone_bricks",
            "count": 1
        },
        {
            "in1": "birch_log",
            "in2": "birch_log",
            "out": "birch_wood",
            "count": 1
        },
        {
            "in1": "jungle_slab",
            "in2": "jungle_slab",
            "out": "jungle_planks",
            "count": 1
        },
        {
            "in1": "jungle_planks",
            "in2": "jungle_planks",
            "out": "stripped_jungle_wood",
            "count": 1
        },
        {
            "in1": "stripped_mangrove_wood",
            "in2": "coal",
            "out": "stripped_crimson_hyphae",
            "count": 1,
        },
        {
            "in1": "coal",
            "in2": "raw_copper",
            "out": "glowstone_dust",
            "count": 1
        },
        {
            "in1": "birch_wood",
            "in2": "tnt",
            "out": "coal_block",
            "count": 1
        },
        {
            "in1": "raw_gold_block",
            "in2": "orange_dye",
            "out": "yellow_concrete_powder",
            "count": 1
        },
        {
            "in1": "raw_gold",
            "in2": "tnt",
            "out": "gold_ingot",
            "count": 1
        },
        {
            "in1": "soul_soil",
            "in2": "iron_ingot",
            "out": "prismarine",
            "count": 1
        },
        {
            "in1": "cherry_button",
            "in2": "cherry_button",
            "out": "cherry_slab",
            "count": 1
        },
        {
            "in1": "cherry_slab",
            "in2": "cherry_slab",
            "out": "stripped_cherry_wood",
            "count": 1
        },
        {
            "in1": "stripped_cherry_wood",
            "in2": "stripped_cherry_wood",
            "out": "cherry_wood",
            "count": 1
        },
        {
            "in1": "stripped_pale_oak_wood",
            "in2": "netherrack",
            "out": "nether_quartz_ore",
            "count": 1
        },
        {
            "in1": "quartz_slab",
            "in2": "quartz_slab",
            "out": "quartz_block",
            "count": 1
        }
    ],
    "crafter_3": [
        {
            "in1": "torch",
            "in2": "smooth_stone",
            "in3": "charcoal",
            "out": "glowstone",
            "count": 1
        },
        {
            "in1": "coal",
            "in2": "charcoal",
            "in3": "glowstone_dust",
            "out": "gunpowder",
            "count": 2
        },
        {
            "in1": "iron_ingot",
            "in2": "coal_block",
            "in3": "copper_ingot",
            "out": "iron_door",
            "count": 1
        },
        {
            "in1": "iron_ingot",
            "in2": "iron_ingot",
            "in3": "iron_ingot",
            "out": "anvil",
            "count": 5
        },
        {
            "in1": "tinted_glass",
            "in2": "glowstone",
            "in3": "gold_ingot",
            "out": "purpur_block",
            "count": 1
        }
    ],
    "washer": [
        {
            "input": "birch_planks",
            "output": "jungle_slab"
        },
        {
            "input": "stripped_crimson_hyphae",
            "output": "crimson_hyphae"
        },
        {
            "input": "yellow_concrete_powder",
            "output": "raw_gold"
        },
        {
            "input": "suspicious_sand",
            "output": "sand"
        },
        {
            "input": "soul_sand",
            "output": "soul_soil"
        }
    ],
    "crusher": [
        {
            "side": "smooth_stone",
            "top": "anvil",
            "count": 2,
            "out": "gravel"
        },
        {
            "side": "end_stone",
            "top": "anvil",
            "count": 1,
            "out": "suspicious_sand"
        },
        {
            "side": "nether_brick_slab",
            "top": "anvil",
            "count": 4,
            "out": "nether_brick"
        },
        {
            "side": "nether_quartz_ore",
            "top": "anvil",
            "count": 1,
            "out": "quartz_slab"
        }
    ],
    "flashbaker": [
        {
            "input": "netherrack",
            "output": "nether_bricks"
        }
    ],
    "sonic_zapper": [
        {
            "input": "purpur_block",
            "output": "purpur_pillar"
        },
        {
            "input": "cherry_wood",
            "output": "stripped_pale_oak_wood"
        },
        {
            "input": "quartz_block",
            "output": "chiseled_quartz_block"
        }
    ],
    "enchanter": [
        {
            "in1": "purpur_pillar",
            "in2": "tinted_glass",
            "in3": "quartz",
            "count": 1,
            "out": "soul_sand"
        },
        {
            "in1": "nether_brick",
            "in2": "birch_planks",
            "in3": "gold_ingot",
            "count": 4,
            "out": "cherry_button"
        }
    ],
}

SHOP_ITEMS = [
    {
        "name": "Conveyor",
        "id": "conveyor",
        "model": "gray_carpet",
        "price": 10,
        "description": "Moves items around horizontally"
    },
    {
        "name": "Floating Conveyor",
        "id": "air_conveyor",
        "model": "pale_moss_carpet",
        "price": 25_000_000,
        "description": "Doesn\\'t need a support block below!"
    },
    {
        "name": "Chute",
        "id": "chute",
        "model": "hopper",
        "price": 25,
        "description": "Moves items down"
    },
    {
        "name": "Elevator",
        "id": "elevator",
        "model": "lodestone",
        "price": 75,
        "description": "Moves items up"
    },
    {
        "name": "Selling Platform",
        "id": "sell",
        "model": "lime_carpet",
        "price": 50,
        "description": "Sell your items for profit!"
    },
    {
        "name": "Floating Selling Platform",
        "id": "air_sell",
        "model": "moss_carpet",
        "price": 1_000_000_000_000,
        "description": "Doesn\\'t need a support block below!"
    },
    {
        "name": "Limiter",
        "id": "limiter",
        "model": "redstone_block",
        "price": 50_000,
        "description": "Takes one item from the stack."
    },
    {
        "name": "Splitter",
        "id": "splitter",
        "model": "lapis_block",
        "price": 750_000,
        "description": "Splits an item stream into two."
    },
    {
        "name": "Block Cutter",
        "id": "cutter",
        "model": "stonecutter",
        "price": 500,
        "description": "Used for various recipes."
    },
    {
        "name": "Furnace",
        "id": "furnace",
        "model": "blast_furnace",
        "price": 1_000,
        "description": "Used for various recipes."
    },
    {
        "name": "Crafter (2 inputs)",
        "id": "crafter_2",
        "model": "crafting_table",
        "price": 500_000,
        "description": "Used for various recipes."
    },
    {
        "name": "Crafter (3 inputs)",
        "id": "crafter_3",
        "model": "crafter",
        "price": 5_000_000,
        "description": "Used for various recipes."
    },
    {
        "name": "Washer",
        "id": "washer",
        "model": "water_bucket",
        "price": 50 * 10 ** 6,
        "description": "Used for various recipes."
    },
    {
        "name": "Crusher",
        "id": "crusher",
        "model": "smoker",
        "price": 5 * 10 ** 9,
        "description": "Used for various recipes."
    },
    {
        "name": "Flashbaker",
        "id": "flashbaker",
        "model": "lava_bucket",
        "price": 4 * 10 ** 9,
        "description": "Used for various recipes."
    },
    {
        "name": "Enchanter",
        "id": "enchanter",
        "model": "enchanting_table",
        "price": 300 * 10 ** 9,
        "description": "Used for various recipes."
    },
    {
        "name": "Sonic Zapper",
        "id": "sonic_zapper",
        "model": "reinforced_deepslate",
        "price": 700 * 10 ** 9,
        "description": "Used for various recipes."
    }
]

def number_to_numeral(n):
    return "[{},{},{},{}]".format(\
        n % 1_000_000_000,\
        n // 1_000_000_000 % 1_000_000_000,\
        n // 1_000_000_000_000_000_000 % 1_000_000_000,\
        n // 1_000_000_000_000_000_000_000_000_000)
def number_to_human(n):
    if n < 1000:
        return str(n)
    mul = ["","k","M","B","T","e15","e18","e21","e24","e27","e30","e33"]
    i = 0
    while n >= 1000:
        n = n / 1000
        i += 1
    return str((n * 100 // 10) / 10) + " " + mul[i]

def ellipse(str):
    if len(str) <= 20:
        return str
    return str[:17] + "..."

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
        f.write("""execute as @s[tag=block.generator.%id%] unless entity @n[type=item_display,tag=item,distance=..0.01] run summon item_display ~ ~ ~ {item:{id:"%output%",count:1},teleport_duration:20,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,-.23f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},view_range:0.25,Tags:["item","item.this","itemid.%output%"],CustomName:'"1"',CustomNameVisible:true}\n""".replace("%id%", gen["id"]).replace("%output%", gen["output"]))
        if not gen["output"] in ITEMS:
            print("[gen] Unpriced item " + gen["output"])

# item prices
with open("data/code/function/logic/sell.prices.mcfunction", "w") as f:
    for item in ITEMS:
        f.write("""execute as @s[tag=itemid.%id%] run return run data modify storage numeral:io A set value %price%\n""".replace("%id%", item).replace("%price%", number_to_numeral(ITEMS[item])))


# # #  RECIPES  # # #

# Cutter recipes
with open("data/code/function/logic/cutter.recipes.mcfunction", "w") as f:
    for recipe in RECIPES["cutter"]:
        f.write('execute as @s[tag=itemid.%input%] run return run function code:logic/cutter/%output%\n'.replace("%input%", recipe["input"]).replace("%output%", recipe["output"]))
        with open("data/code/function/logic/cutter/%.mcfunction".replace("%", recipe["output"]), "w") as g:
            g.write('scoreboard players set #mul math %mul%\ndata modify entity @s item.id set value "minecraft:%output%"\ntag @s remove itemid.%input%\ntag @s add itemid.%output%'.replace("%input%", recipe["input"]).replace("%output%", recipe["output"]).replace("%mul%", str(recipe["mul"])))
        if not recipe["output"] in ITEMS:
            print("[recipe/cutter] Unpriced item " + recipe["output"])

# Furnace recipes
with open("data/code/function/logic/furnace.recipes.mcfunction", "w") as f:
    for recipe in RECIPES["furnace"]:
        f.write("""execute as @s[tag=itemid.%input%] run return run function code:logic/furnace/%output%\n"""\
                .replace("%input%", recipe["input"]).replace("%output%", recipe["output"]))
        with open("data/code/function/logic/furnace/%.mcfunction".replace("%", recipe["output"]), "w") as g:
            g.write('data modify entity @s item.id set value "minecraft:%output%"\ntag @s remove itemid.%input%\ntag @s add itemid.%output%'\
                    .replace("%input%", recipe["input"]).replace("%output%", recipe["output"]))
        if not recipe["output"] in ITEMS:
            print("[recipe/furnace] Unpriced item " + recipe["output"])

# Crafter 2 recipes
with open("data/code/function/logic/crafter_2.recipe.mcfunction", "w") as f:
    for recipe in RECIPES["crafter_2"]:
        if recipe["in1"] == recipe["in2"]:
            f.write("""execute if entity @n[type=item_display,tag=crafting.1,distance=..1.01,tag=itemid.%in%] if entity @n[type=item_display,tag=crafting.2,distance=..1.01,tag=itemid.%in%] run return run function code:logic/crafter_2/%out%\n"""\
                .replace("%in%", recipe["in1"]).replace("%out%", recipe["out"]))
            with open("data/code/function/logic/crafter_2/%.mcfunction".replace("%", recipe["out"]), "w") as g:
                g.write("""scoreboard players remove @e[type=item_display,tag=crafting.input,distance=..1.01,limit=2] count 1\nscoreboard players set #count math %count%\nsummon item_display ~ ~ ~ {item:{id:"%out%",count:1},teleport_duration:20,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,-.23f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},view_range:0.25,Tags:["item","crafting.output","itemid.%out%"],CustomName:'"4"',CustomNameVisible:true}"""\
                    .replace("%in%", recipe["in1"]).replace("%out%", recipe["out"]).replace("%count%", str(recipe["count"])))
        else:
            f.write("""execute if entity @n[type=item_display,tag=crafting.input,distance=..1.01,tag=itemid.%in1%] if entity @n[type=item_display,tag=crafting.input,distance=..1.01,tag=itemid.%in2%] run return run function code:logic/crafter_2/%out%\n"""\
                .replace("%in1%", recipe["in1"]).replace("%in2%", recipe["in2"]).replace("%out%", recipe["out"]))
            with open("data/code/function/logic/crafter_2/%.mcfunction".replace("%", recipe["out"]), "w") as g:
                g.write("""scoreboard players remove @e[type=item_display,tag=crafting.input,distance=..1.01,limit=2] count 1\nscoreboard players set #count math %count%\nsummon item_display ~ ~ ~ {item:{id:"%out%",count:1},teleport_duration:20,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,-.23f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},view_range:0.25,Tags:["item","crafting.output","itemid.%out%"],CustomName:'"4"',CustomNameVisible:true}"""\
                    .replace("%in1%", recipe["in1"]).replace("%in2%", recipe["in2"]).replace("%out%", recipe["out"]).replace("%count%", str(recipe["count"])))
        if not recipe["out"] in ITEMS:
            print("[recipe/crafter_2] Unpriced item " + recipe["out"])
    f.write("return fail")

# Crafter 3 recipes
with open("data/code/function/logic/crafter_3.recipe.mcfunction", "w") as f:
    for recipe in RECIPES["crafter_3"]:
        # 3 identical
        if recipe["in1"] == recipe["in2"] and recipe["in1"] == recipe["in3"]:
            f.write("""execute if entity @n[type=item_display,tag=crafting.1,distance=..1.01,tag=itemid.%in%] if entity @n[type=item_display,tag=crafting.2,distance=..1.01,tag=itemid.%in%] if entity @n[type=item_display,tag=crafting.3,distance=..1.01,tag=itemid.%in%] run return run function code:logic/crafter_3/%out%\n"""\
                .replace("%in%", recipe["in1"]).replace("%out%", recipe["out"]))
        # 2 identical
        elif recipe["in1"] == recipe["in2"]:
            f.write("""execute if entity @n[type=item_display,tag=crafting.1,distance=..1.01,tag=itemid.%in1%] if entity @n[type=item_display,tag=crafting.2,distance=..1.01,tag=itemid.%in1%] if entity @n[type=item_display,tag=crafting.3,distance=..1.01,tag=itemid.%in3%] run return run function code:logic/crafter_3/%out%\n"""\
                .replace("%in1%", recipe["in1"]).replace("%in3%", recipe["in3"]).replace("%out%", recipe["out"]))
            f.write("""execute if entity @n[type=item_display,tag=crafting.1,distance=..1.01,tag=itemid.%in1%] if entity @n[type=item_display,tag=crafting.2,distance=..1.01,tag=itemid.%in3%] if entity @n[type=item_display,tag=crafting.3,distance=..1.01,tag=itemid.%in1%] run return run function code:logic/crafter_3/%out%\n"""\
                .replace("%in1%", recipe["in1"]).replace("%in3%", recipe["in3"]).replace("%out%", recipe["out"]))
            f.write("""execute if entity @n[type=item_display,tag=crafting.1,distance=..1.01,tag=itemid.%in3%] if entity @n[type=item_display,tag=crafting.2,distance=..1.01,tag=itemid.%in1%] if entity @n[type=item_display,tag=crafting.3,distance=..1.01,tag=itemid.%in1%] run return run function code:logic/crafter_3/%out%\n"""\
                .replace("%in1%", recipe["in1"]).replace("%in3%", recipe["in3"]).replace("%out%", recipe["out"]))
        # none identical
        else:
            f.write("""execute if entity @n[type=item_display,tag=crafting.input,distance=..1.01,tag=itemid.%in1%] if entity @n[type=item_display,tag=crafting.input,distance=..1.01,tag=itemid.%in2%] if entity @n[type=item_display,tag=crafting.input,distance=..1.01,tag=itemid.%in3%] run return run function code:logic/crafter_3/%out%\n"""\
                .replace("%in1%", recipe["in1"]).replace("%in2%", recipe["in2"]).replace("%in3%", recipe["in3"]).replace("%out%", recipe["out"]))
        with open("data/code/function/logic/crafter_3/%.mcfunction".replace("%", recipe["out"]), "w") as g:
            g.write("""scoreboard players remove @e[type=item_display,tag=crafting.input,distance=..1.01,limit=3] count 1\nscoreboard players set #count math %count%\nsummon item_display ~ ~ ~ {item:{id:"%out%",count:1},teleport_duration:20,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,-.23f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},view_range:0.25,Tags:["item","crafting.output","itemid.%out%"],CustomName:'"1"',CustomNameVisible:true}"""\
                .replace("%out%", recipe["out"]).replace("%count%", str(recipe["count"])))
        if not recipe["out"] in ITEMS:
            print("[recipe/crafter_3] Unpriced item " + recipe["out"])
    f.write("return fail")

# Crusher recipes
with open("data/code/function/logic/crusher.recipe.mcfunction", "w") as f:
    for recipe in RECIPES["crusher"]:
        f.write("""execute if entity @n[type=item_display,tag=crusher.side,distance=..1.01,tag=itemid.%side%] if entity @n[type=item_display,tag=crusher.top,distance=..1.01,tag=itemid.%top%] run return run function code:logic/crusher/%out%\n"""\
            .replace("%side%", recipe["side"]).replace("%top%", recipe["top"]).replace("%out%", recipe["out"]))
        with open("data/code/function/logic/crusher/%.mcfunction".replace("%", recipe["out"]), "w") as g:
            g.write("""scoreboard players remove @n[type=item_display,tag=crusher.side,distance=..1.01] count 1\nscoreboard players remove @n[type=item_display,tag=crusher.top,distance=..1.01] count 1\nscoreboard players set #count math %count%\nsummon item_display ~ ~ ~ {item:{id:"%out%",count:1},teleport_duration:20,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,-.23f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},view_range:0.25,Tags:["item","crusher.output","itemid.%out%"],CustomName:'"1"',CustomNameVisible:true}"""\
                .replace("%out%", recipe["out"]).replace("%count%", str(recipe["count"])))
        if not recipe["out"] in ITEMS:
            print("[recipe/crusher] Unpriced item " + recipe["out"])
    f.write("return fail")

# Enchanter recipes
with open("data/code/function/logic/enchanter.recipe.mcfunction", "w") as f:
    for recipe in RECIPES["enchanter"]:
        # 3 identical
        if recipe["in1"] == recipe["in2"] and recipe["in1"] == recipe["in3"]:
            f.write("""execute if entity @n[type=item_display,tag=enchanter.1,distance=..1.01,tag=itemid.%in%] if entity @n[type=item_display,tag=enchanter.2,distance=..1.01,tag=itemid.%in%] if entity @n[type=item_display,tag=enchanter.3,distance=..1.01,tag=itemid.%in%] run return run function code:logic/crafter_3/%out%\n"""\
                .replace("%in%", recipe["in1"]).replace("%out%", recipe["out"]))
        # 2 identical
        elif recipe["in1"] == recipe["in2"]:
            f.write("""execute if entity @n[type=item_display,tag=enchanter.1,distance=..1.01,tag=itemid.%in1%] if entity @n[type=item_display,tag=enchanter.2,distance=..1.01,tag=itemid.%in1%] if entity @n[type=item_display,tag=enchanter.3,distance=..1.01,tag=itemid.%in3%] run return run function code:logic/crafter_3/%out%\n"""\
                .replace("%in1%", recipe["in1"]).replace("%in3%", recipe["in3"]).replace("%out%", recipe["out"]))
            f.write("""execute if entity @n[type=item_display,tag=enchanter.1,distance=..1.01,tag=itemid.%in1%] if entity @n[type=item_display,tag=enchanter.2,distance=..1.01,tag=itemid.%in3%] if entity @n[type=item_display,tag=enchanter.3,distance=..1.01,tag=itemid.%in1%] run return run function code:logic/crafter_3/%out%\n"""\
                .replace("%in1%", recipe["in1"]).replace("%in3%", recipe["in3"]).replace("%out%", recipe["out"]))
            f.write("""execute if entity @n[type=item_display,tag=enchanter.1,distance=..1.01,tag=itemid.%in3%] if entity @n[type=item_display,tag=enchanter.2,distance=..1.01,tag=itemid.%in1%] if entity @n[type=item_display,tag=enchanter.3,distance=..1.01,tag=itemid.%in1%] run return run function code:logic/crafter_3/%out%\n"""\
                .replace("%in1%", recipe["in1"]).replace("%in3%", recipe["in3"]).replace("%out%", recipe["out"]))
        # none identical
        else:
            f.write("""execute if entity @n[type=item_display,tag=enchanter.input,distance=..1.01,tag=itemid.%in1%] if entity @n[type=item_display,tag=enchanter.input,distance=..1.01,tag=itemid.%in2%] if entity @n[type=item_display,tag=enchanter.input,distance=..1.01,tag=itemid.%in3%] run return run function code:logic/crafter_3/%out%\n"""\
                .replace("%in1%", recipe["in1"]).replace("%in2%", recipe["in2"]).replace("%in3%", recipe["in3"]).replace("%out%", recipe["out"]))
        with open("data/code/function/logic/crafter_3/%.mcfunction".replace("%", recipe["out"]), "w") as g:
            g.write("""scoreboard players remove @e[type=item_display,tag=enchanter.input,distance=..1.01,limit=3] count 1\nscoreboard players set #count math %count%\nsummon item_display ~ ~ ~ {item:{id:"%out%",count:1},teleport_duration:20,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,-.23f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},view_range:0.25,Tags:["item","enchanter.output","itemid.%out%"],CustomName:'"1"',CustomNameVisible:true}"""\
                .replace("%out%", recipe["out"]).replace("%count%", str(recipe["count"])))
        if not recipe["out"] in ITEMS:
            print("[recipe/crafter_3] Unpriced item " + recipe["out"])
    f.write("return fail")

# Washer recipes
with open("data/code/function/logic/washer.recipes.mcfunction", "w") as f:
    for recipe in RECIPES["washer"]:
        f.write("""execute as @s[tag=itemid.%input%] run return run function code:logic/washer/%output%\n"""\
                .replace("%input%", recipe["input"]).replace("%output%", recipe["output"]))
        with open("data/code/function/logic/washer/%.mcfunction".replace("%", recipe["output"]), "w") as g:
            g.write('data modify entity @s item.id set value "minecraft:%output%"\ntag @s remove itemid.%input%\ntag @s add itemid.%output%'\
                    .replace("%input%", recipe["input"]).replace("%output%", recipe["output"]))
        if not recipe["output"] in ITEMS:
            print("[recipe/washer] Unpriced item " + recipe["output"])
            
# Flashbaker recipes
with open("data/code/function/logic/flashbaker.recipes.mcfunction", "w") as f:
    for recipe in RECIPES["flashbaker"]:
        f.write("""execute as @s[tag=itemid.%input%] run return run function code:logic/flashbaker/%output%\n"""\
                .replace("%input%", recipe["input"]).replace("%output%", recipe["output"]))
        with open("data/code/function/logic/flashbaker/%.mcfunction".replace("%", recipe["output"]), "w") as g:
            g.write('data modify entity @s item.id set value "minecraft:%output%"\ntag @s remove itemid.%input%\ntag @s add itemid.%output%'\
                    .replace("%input%", recipe["input"]).replace("%output%", recipe["output"]))
        if not recipe["output"] in ITEMS:
            print("[recipe/flashbaker] Unpriced item " + recipe["output"])
            
# Sonic Zapper recipes
with open("data/code/function/logic/sonic_zapper.recipes.mcfunction", "w") as f:
    for recipe in RECIPES["sonic_zapper"]:
        f.write("""execute as @s[tag=itemid.%input%] run return run function code:logic/sonic_zapper/%output%\n"""\
                .replace("%input%", recipe["input"]).replace("%output%", recipe["output"]))
        with open("data/code/function/logic/sonic_zapper/%.mcfunction".replace("%", recipe["output"]), "w") as g:
            g.write('data modify entity @s item.id set value "minecraft:%output%"\ntag @s remove itemid.%input%\ntag @s add itemid.%output%'\
                    .replace("%input%", recipe["input"]).replace("%output%", recipe["output"]))
        if not recipe["output"] in ITEMS:
            print("[recipe/sonic_zapper] Unpriced item " + recipe["output"])

# # #  SHOP PAGES  # # #
# convert generators to SHOP_ITEMS
for gen in GENERATORS:
    SHOP_ITEMS.append({
        "name": gen["name"],
        "id": "generator." + gen["id"],
        "model": gen["model"],
        "price": gen["price"],
        "description": "Generates " + ITEM_TRANSLATE[gen["output"]] + " ($" + number_to_human(ITEMS[gen["output"]]) + ")"
    })

# page 0 logic
g = open("data/code/function/shop/shop_logic/tick.update.mcfunction", "w")
g.write("data modify block 29999999 -64 0 Items set from block 29999998 -64 0 Items\n")
with open("data/code/function/shop_pages.mcfunction", "w") as f:
    # Page 0
    f.write("setblock 29999999 -64 0 barrel\ndata modify block 29999999 -64 0 CustomName set value '\"Shop\"'\nsetblock 29999998 -64 0 barrel\ndata remove block 29999998 -64 0 Items\n")
    page = 0
    i = 0
    for item in SHOP_ITEMS:
        if i == 24:
            # end of current page
            if page == 0:
                f.write("""data modify block 29999998 -64 % Items append value {id:"black_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:8}\ndata modify block 29999998 -64 % Items append value {id:"black_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:17}\ndata modify block 29999998 -64 % Items append value {id:"arrow",count:1,components:{item_name:'"Next Page"',custom_data:{shop_item:1b,next_page:1b}},Slot:26}\n""".replace("%", str(page)))
            else:
                f.write("""data modify block 29999998 -64 % Items append value {id:"prismarine_shard",count:1,components:{item_name:'"Prev Page"',custom_data:{shop_item:1b,prev_page:1b}},Slot:8}\ndata modify block 29999998 -64 % Items append value {id:"black_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:17}\ndata modify block 29999998 -64 % Items append value {id:"arrow",count:1,components:{item_name:'"Next Page"',custom_data:{shop_item:1b,next_page:1b}},Slot:26}\n""".replace("%", str(page)))
            # start new one
            page += 1
            i = 0
            f.write("setblock 29999999 -64 % barrel\ndata modify block 29999999 -64 % CustomName set value '\"Shop\"'\n\nsetblock 29999998 -64 % barrel\ndata remove block 29999998 -64 % Items\n".replace("%", str(page)))
            g.write("data modify block 29999999 -64 % Items set from block 29999998 -64 % Items\n".replace("%", str(page)))

        # convert i to slot
        ii = i // 8
        jj = i % 8
        k = ii * 9 + jj
        f.write("""data modify block 29999998 -64 % Items append value {id:"@model@",count:1,components:{item_name:'"@name@"',lore:['[{"text":"Price: ","color":"gray","italic":false},{"text":"$@price@","color":"green","italic":false}]','[{"text":"@description@","color":"gray","italic":false}]'],custom_data:{shop:"@id@",shop_item:1b}},Slot:&}\n"""\
            .replace("%", str(page)).replace("&", str(k))\
            .replace("@model@", item["model"])\
            .replace("@name@", item["name"])\
            .replace("@id@", item["id"])\
            .replace("@price@", number_to_human(item["price"]))\
            .replace("@description@", item["description"]))
        i += 1
    # end of last page
    # fill with stained glass
    while i < 24:
        ii = i // 8
        jj = i % 8
        k = ii * 9 + jj
        f.write("""data modify block 29999998 -64 % Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:&}\n"""\
                .replace("%", str(page)).replace("&", str(k)))
        i += 1
    if page == 0:
        f.write("""data modify block 29999998 -64 % Items append value {id:"black_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:8}\ndata modify block 29999998 -64 % Items append value {id:"black_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:17}\ndata modify block 29999998 -64 % Items append value {id:"black_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:26}""".replace("%", str(page)))
    else:
        f.write("""data modify block 29999998 -64 % Items append value {id:"prismarine_shard",count:1,components:{item_name:'"Prev Page"',custom_data:{shop_item:1b,prev_page:1b}},Slot:8}\ndata modify block 29999998 -64 % Items append value {id:"black_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:17}\ndata modify block 29999998 -64 % Items append value {id:"black_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:26}""".replace("%", str(page)))
    g.close()
# page 0 shop defs
with open("data/code/function/shop/shop_logic/shop_item.item.mcfunction", "w") as f:
    for item in SHOP_ITEMS:
        # execute if items entity @s player.cursor *[custom_data~{shop:"conveyor"}] 
        f.write('execute if items entity @s player.cursor *[custom_data~{shop:"%"}] run return run function code:shop/shop_logic/item/%\n'.replace("%", item["id"]))
        with open("data/code/function/shop/shop_logic/item/%.mcfunction".replace("%", item["id"]), "w") as g:
            g.write("data modify storage numeral:io B set value %price%\nfunction numeral:ext/lda\nexecute if function numeral:gte run return run function code:shop/shop_logic/item/%id%.sell\nfunction code:shop/shop_logic/not_enough_money".replace("%id%", item["id"]).replace("%price%", number_to_numeral(item["price"])))
        with open("data/code/function/shop/shop_logic/item/%.sell.mcfunction".replace("%", item["id"]), "w") as g:
            g.write("loot give @s loot code:blocks/%id%\nfunction code:shop/shop_logic/purchase_ok".replace("%id%", item["id"].replace(".", "/")))
with open("data/code/function/shop/shop_logic/bulk_item.item.mcfunction", "w") as f:
    for item in SHOP_ITEMS:
        # execute if items entity @s player.cursor *[custom_data~{shop:"conveyor"}] 
        f.write('execute if items entity @s container.* *[custom_data~{shop:"%"}] run return run function code:shop/shop_logic/bulk/%\n'.replace("%", item["id"]))
        with open("data/code/function/shop/shop_logic/bulk/%.mcfunction".replace("%", item["id"]), "w") as g:
            g.write("data modify storage numeral:io B set value %price%\nfunction numeral:ext/lda\nexecute if function numeral:gte run return run function code:shop/shop_logic/bulk/%id%.sell\nfunction code:shop/shop_logic/not_enough_money".replace("%id%", item["id"]).replace("%price%", number_to_numeral(5 * item["price"])))
        with open("data/code/function/shop/shop_logic/bulk/%.sell.mcfunction".replace("%", item["id"]), "w") as g:
            g.write("loot give @s loot code:blocks/%id%\nloot give @s loot code:blocks/%id%\nloot give @s loot code:blocks/%id%\nloot give @s loot code:blocks/%id%\nloot give @s loot code:blocks/%id%\nfunction code:shop/shop_logic/purchase_ok".replace("%id%", item["id"].replace(".", "/")))
with open("data/code/function/shop/shop_logic/shop_sell.item.mcfunction", "w") as f:
    for item in SHOP_ITEMS:
        f.write("""execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:entity_data"{Tags:["place.%"]} run return run data modify storage numeral:io B set value $\n"""\
                .replace("%", item["id"]).replace("$", number_to_numeral(item["price"])))
    f.write("return fail")


# # #  RESOURCE PACK AUTO GENERATOR  # # #

if not os.path.exists("../rp/assets/fb/models/block/generator"):
    os.makedirs("../rp/assets/fb/models/block/generator")
if not os.path.exists("../rp/assets/minecraft/blockstates"):
    os.makedirs("../rp/assets/minecraft/blockstates")

for gen in GENERATORS:
    # block model
    with open("../rp/assets/fb/models/block/generator/" + gen["id"] + ".json", "w") as f:
        if gen["type"] == "cross":
            f.write("""{"parent":"fb:block/cross","textures":{"cross":"%"}}""".replace("%", gen["rp_texture"]))
        elif gen["type"] == "ore":
            f.write("""{"parent":"fb:block/ore","textures":{"ore":"%"}}""".replace("%", gen["rp_texture"]))
        else:
            print("[rp/model] Unknown generator type " + gen["type"])
    # block state
    # get block state
    block_state = str(gen["gen_block"])
    if block_state.count("[") > 0:
        block_state = block_state[:block_state.find("[")]
    
    with open("../rp/assets/minecraft/blockstates/" + block_state + ".json", "w") as f:
        f.write("""{"variants":{"":{"model":"fb:block/generator/%"}}}""".replace("%", gen["id"]))


# # #  BOOK GENERATOR  # # #
BOOK_TEMPLATE = """{"type":"entity","pools":[{"rolls":1,"entries":[{"type":"item","name":"written_book","functions":[{"function":"set_components","components":{"minecraft:enchantment_glint_override":false,"written_book_content":{"author":"Factory Builder","title":"Factory Builder","pages":[%]}}}]}]}]}"""

class BookSpace:
    def __init__(self):
        pass
    def compile(self):
        return '" "'

class BookComponent:
    def __init__(self, text):
        self._text = text
        self._italic = False
        self._bold = False
        self._color = "black"
        self._underlined = False
        self._target_page = -1
        self._hover = None
        self._hover_item = None
    def italic(self, b :bool):
        self._italic = b
        return self
    def bold(self, b :bool):
        self._bold = b
        return self
    def color(self, b :str):
        self._color = b
        return self
    def underlined(self, b :bool):
        self._underlined = b
        return self
    def target_page(self, b :int):
        self._target_page = b
        return self
    def hover(self, h):
        self._hover = h
        return self
    def hover_recipe(self, in1,in2,in3,block,recipe_name,out,out_cnt,in4=0):
        # generate lore
        lore = ""
        if in1 == 0 and in3 == 0:
            lore += '"{\\"text\\":\\"Input: % ($*)\\",\\"color\\":\\"white\\",\\"italic\\":false}"'.replace("%", ITEM_TRANSLATE[in2]).replace("*", number_to_human(ITEMS[in2]))
        else:
            lore += '"{\\"text\\":\\"Inputs:\\",\\"color\\":\\"white\\",\\"italic\\":false}"'
            if in1 != 0:
                lore += ',"{\\"text\\":\\"- % ($*)\\",\\"color\\":\\"white\\",\\"italic\\":false}"'.replace("%", ITEM_TRANSLATE[in1]).replace("*", number_to_human(ITEMS[in1]))
            if in2 != 0:
                lore += ',"{\\"text\\":\\"- % ($*)\\",\\"color\\":\\"white\\",\\"italic\\":false}"'.replace("%", ITEM_TRANSLATE[in2]).replace("*", number_to_human(ITEMS[in2]))
            if in3 != 0:
                lore += ',"{\\"text\\":\\"- % ($*)\\",\\"color\\":\\"white\\",\\"italic\\":false}"'.replace("%", ITEM_TRANSLATE[in3]).replace("*", number_to_human(ITEMS[in3]))
        if out_cnt > 1:
            lore += ',"{\\"text\\":\\"Output: &x % ($*)\\",\\"color\\":\\"white\\",\\"italic\\":false}"'.replace("&", str(out_cnt)).replace("%", ITEM_TRANSLATE[out]).replace("*", number_to_human(ITEMS[out]))
        else:
            lore += ',"{\\"text\\":\\"Output: % ($*)\\",\\"color\\":\\"white\\",\\"italic\\":false}"'.replace("%", ITEM_TRANSLATE[out]).replace("*", number_to_human(ITEMS[out]))
        self._hover_item = '{"bundle_contents":[{"id":"barrier","components":{"item_model":"%in1%"}},{"id":"barrier","components":{"item_model":"%in4%"}},{"id":"barrier","components":{"item_model":"air"}},{"id":"barrier","components":{"item_model":"air"}},{"id":"barrier","components":{"item_model":"%in2%"}},{"id":"barrier","components":{"item_model":"%block%"}},{"id":"barrier","components":{"item_model":"%output%"},"count":%count%},{"id":"barrier","components":{"item_model":"air"}},{"id":"barrier","components":{"item_model":"%in3%"}},{"id":"barrier","components":{"item_model":"air"}},{"id":"barrier","components":{"item_model":"air"}},{"id":"barrier","components":{"item_model":"air"}}],"item_name":"\\"%recipe_name%\\"","lore":[%lore%]}'\
            .replace("%in1%", in1 == 0 and "air" or in1)\
            .replace("%in2%", in2 == 0 and "air" or in2)\
            .replace("%in3%", in3 == 0 and "air" or in3)\
            .replace("%in4%", in4 == 0 and "air" or in4)\
            .replace("%block%", block)\
            .replace("%output%", out)\
            .replace("%count%", str(out_cnt))\
            .replace("%recipe_name%", recipe_name)\
            .replace("%lore%", lore)
        return self
    def compile(self):
        ret = '{"text":"' + self._text + '"'
        ret += ',"bold":' + ("true" if self._bold else "false")
        ret += ',"italic":' + ("true" if self._italic else "false")
        ret += ',"color":"' + self._color + '"'
        ret += ',"underlined":' + ("true" if self._underlined else "false")
        if self._target_page != -1:
            ret += ',"clickEvent":{"action":"change_page","value":"' + str(self._target_page) + '"}'
        if not self._hover is None:
            ret += ',"hoverEvent":{"action":"show_text","value":' + self._hover.compile() + '}'
        elif not self._hover_item is None:
            ret += ',"hoverEvent":{"action":"show_item","contents":{"id":"bundle","count":1,"components":%}}'.replace("%", self._hover_item)
        return ret + '}'
# bundle[bundle_contents=[{id:"barrier",components:{item_model:"raw_gold_block"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"raw_gold"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"coal_block"},count:4},{id:"barrier",components:{item_model:"gold_ingot"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"air"}}],lore=['{"text":"Input:","color":"white","italic":false}','{"text":"- A","color":"white","italic":false}','{"text":"- B","color":"white","italic":false}','{"text":"- C","color":"white","italic":false}','{"text":"Output: 4x idk","color":"white","italic":false}']]
# {"id":"bundle","count":1,"components":{"bundle_contents":[{id:"barrier",components:{item_model:"raw_gold_block"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"raw_gold"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"coal_block"},count:4},{id:"barrier",components:{item_model:"gold_ingot"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"air"}},{id:"barrier",components:{item_model:"air"}}]}}

class BookLine:
    def __init__(self):
        self.components = []
    def add_comp(self, comp :BookComponent):
        self.components.append(comp)
        return self
    def compile(self):
        ret = '['
        for comp in self.components:
            ret += comp.compile() + ","
        return ret[:-1] + "]"
    def sort_key(self):
        return self.components[0]._text
class BookLineEmpty:
    def __init__(self):
        pass
    def compile(self): return '""'

class BookPage:
    def __init__(self):
        self.lines = []
    def add_line(self, line: BookLine):
        self.lines.append(line)
        return self
    def compile(self):
        ret = ""
        for comp in self.lines:
            if type(comp) is BookLine:
                ret += "," + comp.compile()
            ret += ',"\\n"'
        return '[' + ret[1:] + ']'

def esc_string(string :str):
    return string.replace("\\", "\\\\").replace('"', '\\"')

pages = []

pages.append(BookPage()\
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("  Factory Builder").color("gold").bold(True)))\
    .add_line(BookLine().add_comp(BookComponent("            by devilexe3")))\
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("    A book about all")))\
    .add_line(BookLine().add_comp(BookComponent("    there is about")))\
    .add_line(BookLine().add_comp(BookComponent("    this minigame.")))\
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("Made with help from:")))\
    .add_line(BookLine().add_comp(BookComponent("  LuveelVoom")))\
    .add_line(BookLineEmpty())\
    .add_line(BookLineEmpty())\
)
# pre-calc item pages
# max 14 lines per page
item_pages = (len(ITEMS) + 14) // 14
pages.append(BookPage()\
    .add_line(BookLine().add_comp(BookComponent("TABLE").bold(True)).add_comp(BookComponent(" of ")).add_comp(BookComponent("CONTENTS").bold(True)))\
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("Tutorial").underlined(True).target_page(3)))\
    .add_line(BookLine().add_comp(BookComponent("Items").underlined(True).target_page(7)))\
    .add_line(BookLine().add_comp(BookComponent("Recipes").underlined(True).target_page(7 + item_pages)))\
)
pages.append(BookPage()\
    .add_line(BookLine().add_comp(BookComponent("^").target_page(2)).add_comp(BookComponent("     TUTORIAL").bold(True)))\
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("You can go to your plot by using \\n     ")).add_comp(BookComponent("/trigger plot").underlined(True)))\
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("You can buy stuff using the shop (nether star)")))\
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("You can only place tiles when you are strictly inside your plot")))\
)
pages.append(BookPage()\
    .add_line(BookLine().add_comp(BookComponent("You can only destroy tiles with the Destroy Tool")))
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("Generators create different items which can be crafted into other items more valuable")))
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("Items can be moved around with conveyors, elevators and chutes")))
)
pages.append(BookPage()\
    .add_line(BookLine().add_comp(BookComponent("Items can only be sold with Selling Platforms")))
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("You can flip tile orientation by crouching")))
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("Your plot gets automatically saved when you leave")))
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("If you don't know how to get started, check out the plot at spawn")))
)
pages.append(BookPage()\
    .add_line(BookLine().add_comp(BookComponent("Trigger commands:")))
    .add_line(BookLine().add_comp(BookComponent("/trigger spawn")))
    .add_line(BookLine().add_comp(BookComponent("/trigger plot")))
    .add_line(BookLine().add_comp(BookComponent("/trigger spec")))
    .add_line(BookLine().add_comp(BookComponent("/trigger shrink")))
    .add_line(BookLine().add_comp(BookComponent("/trigger kill_items")))
    .add_line(BookLine().add_comp(BookComponent("- removes all item entities in the plot")))
    .add_line(BookLine().add_comp(BookComponent("/trigger wipe_plot")))
    .add_line(BookLine().add_comp(BookComponent("- removes and drops all blocks")))
    .add_line(BookLine().add_comp(BookComponent("/trigger reload_plot")))
    .add_line(BookLine().add_comp(BookComponent("- reloads the plot and your data")))
)
# item pages
current_page = BookPage().add_line(BookLine().add_comp(BookComponent("^").target_page(2)).add_comp(BookComponent("       ITEMS").bold(True)))
line = 1
for item in dict(sorted(ITEMS.items(), key=lambda item: item[1])):
    if line == 14:
        pages.append(current_page)
        current_page = BookPage()
        line = 0
    current_page.add_line(BookLine().add_comp(BookComponent(ellipse(ITEM_TRANSLATE[item])).hover(BookLine().add_comp(BookComponent(ITEM_TRANSLATE[item]).color("white")).add_comp(BookComponent("\\n$" + number_to_human(ITEMS[item])).color("green")))))
    line += 1
pages.append(current_page)
# recipes
recipe_lines = []
for recipe_type in RECIPES:
    for recipe in RECIPES[recipe_type]:
        if recipe_type == "cutter":
            recipe_lines.append(BookLine().add_comp(BookComponent(ellipse(ITEM_TRANSLATE[recipe["output"]])).hover_recipe(0,recipe["input"],0,"stonecutter","Block Cutter",recipe["output"],recipe["mul"])))
        elif recipe_type == "furnace":
            recipe_lines.append(BookLine().add_comp(BookComponent(ellipse(ITEM_TRANSLATE[recipe["output"]])).hover_recipe(0,recipe["input"],0,"blast_furnace","Furnace",recipe["output"],1)))
        elif recipe_type == "crafter_2":
            recipe_lines.append(BookLine().add_comp(BookComponent(ellipse(ITEM_TRANSLATE[recipe["out"]])).hover_recipe(recipe["in1"],0,recipe["in2"],"crafting_table","Crafter (2 inputs)",recipe["out"],recipe["count"])))
        elif recipe_type == "crafter_3":
            recipe_lines.append(BookLine().add_comp(BookComponent(ellipse(ITEM_TRANSLATE[recipe["out"]])).hover_recipe(recipe["in1"],recipe["in2"],recipe["in3"],"crafter","Crafter (3 inputs)",recipe["out"],recipe["count"])))
        elif recipe_type == "washer":
            recipe_lines.append(BookLine().add_comp(BookComponent(ellipse(ITEM_TRANSLATE[recipe["output"]])).hover_recipe(0,recipe["input"],0,"water_bucket","Washer",recipe["output"],1)))
        elif recipe_type == "crusher":
            recipe_lines.append(BookLine().add_comp(BookComponent(ellipse(ITEM_TRANSLATE[recipe["out"]])).hover_recipe(0,recipe["side"],0,"smoker","Crusher",recipe["out"],recipe["count"],recipe["top"])))
        elif recipe_type == "flashbaker":
            recipe_lines.append(BookLine().add_comp(BookComponent(ellipse(ITEM_TRANSLATE[recipe["output"]])).hover_recipe(0,recipe["input"],0,"lava_bucket","Flashbaker",recipe["output"],1)))
        elif recipe_type == "sonic_zapper":
            recipe_lines.append(BookLine().add_comp(BookComponent(ellipse(ITEM_TRANSLATE[recipe["output"]])).hover_recipe(0,recipe["input"],0,"reinforced_deepslate","Sonic Zapper",recipe["output"],1)))
        elif recipe_type == "enchanter":
            recipe_lines.append(BookLine().add_comp(BookComponent(ellipse(ITEM_TRANSLATE[recipe["out"]])).hover_recipe(recipe["in1"],recipe["in2"],recipe["in3"],"enchanting_table","Enchanter",recipe["out"],recipe["count"])))
        else:
            print("[book/recipe] Unknown recipe type " + recipe_type)
current_page = BookPage().add_line(BookLine().add_comp(BookComponent("^").target_page(2)).add_comp(BookComponent("      RECIPES").bold(True)))
line = 1
for recipe in sorted(recipe_lines, key=lambda x: x.sort_key()):
    if line == 14:
        pages.append(current_page)
        current_page = BookPage()
        line = 0
    current_page.add_line(recipe)
    line += 1
pages.append(current_page)
# compile pages
compiled = ""
for page in pages:
    compiled += '"' + esc_string(page.compile()) + '",'
with open("data/code/loot_table/book.json", "w") as f:
    f.write(BOOK_TEMPLATE.replace("%", compiled[:-1]))