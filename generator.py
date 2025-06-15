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
        "gen_block": "exposed_copper_grate",
        "price": 400 * 10 ** 6,
        "id": "birch",
        "type": "cross",
        "rp_texture": "minecraft:block/birch_sapling"
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
    },
    {
        "name": "Spruce Farm",
        "model": "spruce_sapling",
        "output": "spruce_log",
        "gen_block": "weathered_copper_grate",
        "price": 5 * 10 ** 15,
        "id": "spruce",
        "type": "cross",
        "rp_texture": "minecraft:block/spruce_sapling"
    },
    {
        "name": "Stick Container",
        "model": "stick",
        "output": "stick",
        "gen_block": "brown_glazed_terracotta",
        "price": 50 * 10 ** 15,
        "id": "stick",
        "type": "container",
        "alt": True
    },
    {
        "name": "Anvil Container",
        "model": "anvil",
        "output": "anvil",
        "gen_block": "gray_glazed_terracotta",
        "price": 500 * 10 ** 15,
        "id": "anvil",
        "type": "container",
        "alt": True
    },
    {
        "name": "Gold Ore Farm",
        "model": "gold_ore",
        "output": "raw_gold",
        "gen_block": "gold_block",
        "price": 1 * 10 ** 18,
        "id": "raw_gold",
        "type": "ore",
        "rp_texture": "minecraft:block/gold_ore",
        "alt": True
    },
    {
        "name": "Quartz Farm",
        "model": "nether_quartz_ore",
        "output": "quartz",
        "gen_block": "quartz_block",
        "price": 2.5 * 10 ** 18,
        "id": "quartz",
        "type": "ore",
        "rp_texture": "minecraft:block/nether_quartz_ore",
        "alt": True
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

    # end of epearl chain
    "soul_torch": 1_000_000_000,
    "end_rod": 125_000_000_000,
    "cyan_stained_glass": 15_000_000_000,
    "glass": 12_500_000_000,
    "breeze_rod": 150_000_000_000,
    "blaze_rod": 200_000_000_000,
    "blaze_powder": 150_000_000_000,
    "ender_eye": 6_000_000_000_000,
    "end_crystal": 30_000_000_000_000,

    # obsidian
    "cracked_nether_bricks": 2_500_000,
    "brown_concrete_powder": 5_000_000,
    "red_sand": 6_000_000_000,
    "black_concrete_powder": 10_000_000_000,
    "blackstone": 12_500_000_000,
    "polished_blackstone": 15_000_000_000,
    "gilded_blackstone": 20_000_000_000,
    "obsidian": 30_000_000_000,
    "resin_clump": 10_000_000,
    "resin_brick": 15_000_000,

    # spruce tier
    "iron_axe": 4.5e6,
    "spruce_log": 25e12,
    "spruce_wood": 50e12,
    "stripped_spruce_wood": 125e12,
    "stripped_spruce_log": 137.5e12,
    "spruce_planks": 150e12,
    "spruce_stairs": 162.5e12,
    "spruce_slab": 175e12,
    "wooden_shovel": 187.5e12,
    "spruce_trapdoor": 190e12,
    "spruce_door": 400e12,
    "spruce_boat": 3e15,
    "brown_dye": 50e12,
    "spruce_pressure_plate": 150e12,
    "chest": 1e15,
    "spruce_chest_boat": 7.5e15,

    # bedrock update
    "glass_bottle": 3e9,
    "honey_bottle": 5e9,
    "allay_spawn_egg": 4e9,
    "ghast_tear": 300e12,
    "prismarine_crystals": 1.5e15,
    "ghast_spawn_egg": 3e15,
    "experience_bottle": 50e15,
    "black_dye": 25e9,
    "echo_shard": 250e9,
    "amethyst_shard": 300e9,
    "amethyst_block": 750e9,
    "purple_concrete_powder": 500e9,
    "crying_obsidian": 1e12,
    "smooth_sandstone": 250e6,
    "end_stone_bricks": 500e6,
    "chiseled_stone_bricks": 1e3,
    "red_nether_bricks": 5e6,
    "magma_block": 7.5e9,
    "gray_concrete_powder": 15e9,
    "bedrock": 200e15,
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

    # end of epearl chain
    "soul_torch": "Enchanted Torch",
    "end_rod": "End Rod",
    "cyan_stained_glass": "Cloudy End Glass",
    "glass": "Clean Glass",
    "breeze_rod": "Empty Rod",
    "blaze_rod": "Blaze Rod",
    "blaze_powder": "Blaze Powder",
    "ender_eye": "Eye of Ender",
    "end_crystal": "End Crystal",

    # obsidian
    "cracked_nether_bricks": "Cracked Nether Bricks",
    "brown_concrete_powder": "Nether Dust",
    "red_sand": "Enhanced Endstone Powder",
    "black_concrete_powder": "Nether-End Dust",
    "blackstone": "Unrefined Volcano Rock",
    "polished_blackstone": "Refined Volcano Rock",
    "gilded_blackstone": "Enriched Volcano Rock",
    "obsidian": "Obsidian",
    "resin_clump": "Activated Copper Chunk",
    "resin_brick": "Activated Copper Ingot",

    # spruce tier
    "iron_axe": "Iron Axe",
    "spruce_log": "Spruce Log",
    "spruce_wood": "Spruce Wood",
    "stripped_spruce_wood": "Stripped Spruce Wood",
    "stripped_spruce_log": "Refined Spruce Wood",
    "spruce_planks": "Spruce Planks",
    "spruce_stairs": "Chopped Spruce Planks",
    "spruce_slab": "Spruce Slab",
    "wooden_shovel": "Wooden Shovel",
    "spruce_trapdoor": "Spruce Trapdoor",
    "spruce_door": "Spruce Door",
    "spruce_boat": "Spruce Boat",
    "brown_dye": "Spruce Wood Shavings",
    "spruce_pressure_plate": "Spruce Plate",
    "chest": "Chest",
    "spruce_chest_boat": "Spruse Boat with Chest",

    # bedrock update
    "glass_bottle": "Glass Bottle",
    "honey_bottle": "Lava Bottle",
    "allay_spawn_egg": "Water Bottle",
    "ghast_tear": "Ghast Tear",
    "prismarine_crystals": "Ghast Tear Cluster",
    "ghast_spawn_egg": "Dried Ghast",
    "experience_bottle": "Ghast Soul",
    "black_dye": "Obsidian Shard",
    "echo_shard": "Purified Obsidian Shard",
    "amethyst_shard": "Glowing Obsidian Shard",
    "amethyst_block": "Glowing Obsidian Block",
    "purple_concrete_powder": "Glowing Obsidian Powder",
    "crying_obsidian": "Glowing Obsidian",
    "smooth_sandstone": "Raw Smooth End Stone",
    "end_stone_bricks": "Smooth End Stone",
    "chiseled_stone_bricks": "Chiseled Stone Bricks",
    "red_nether_bricks": "Red Nether Bricks",
    "magma_block": "Magma Block",
    "gray_concrete_powder": "Antimatter",
    "bedrock": "Bedrock",
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
        },
        {
            "input": "nether_bricks",
            "output": "cracked_nether_bricks"
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
        },
        {
            "in1": "ender_pearl",
            "in2": "blaze_powder",
            "out": "ender_eye",
            "count": 1
        },
        {
            "in1": "red_sand",
            "in2": "brown_concrete_powder",
            "out": "black_concrete_powder",
            "count": 1
        },
        {
            "in1": "spruce_log",
            "in2": "spruce_log",
            "out": "spruce_wood",
            "count": 1
        },
        {
            "in1": "spruce_wood",
            "in2": "iron_axe",
            "out": "stripped_spruce_wood",
            "count": 1
        },
        {
            "in1": "stripped_spruce_wood",
            "in2": "iron_axe",
            "out": "stripped_spruce_log",
            "count": 1
        },
        {
            "in1": "stripped_spruce_log",
            "in2": "iron_axe",
            "out": "spruce_planks",
            "count": 1
        },
        {
            "in1": "spruce_planks",
            "in2": "iron_axe",
            "out": "spruce_stairs",
            "count": 1
        },
        {
            "in1": "spruce_stairs",
            "in2": "iron_axe",
            "out": "spruce_slab",
            "count": 1
        },
        {
            "in1": "spruce_boat",
            "in2": "chest",
            "out": "spruce_chest_boat",
            "count": 1
        },
        {
            "in1": "echo_shard",
            "in2": "resin_brick",
            "out": "amethyst_shard",
            "count": 1
        },
        {
            "in1": "amethyst_shard",
            "in2": "amethyst_shard",
            "out": "amethyst_block",
            "count": 1
        },
        {
            "in1": "end_stone",
            "in2": "end_stone",
            "out": "smooth_sandstone",
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
        },
        {
            "in1": "end_stone",
            "in2": "end_stone",
            "in3": "purpur_block",
            "out": "end_rod",
            "count": 4
        },
        {
            "in1": "glass",
            "in2": "glass",
            "in3": "ender_eye",
            "out": "end_crystal",
            "count": 1
        },
        {
            "in1": "resin_brick",
            "in2": "cobblestone",
            "in3": "polished_blackstone",
            "out": "gilded_blackstone",
            "count": 1
        },
        {
            "in1": "iron_ingot",
            "in2": "iron_ingot",
            "in3": "stick",
            "out": "iron_axe",
            "count": 5
        },
        {
            "in1": "stick",
            "in2": "stick",
            "in3": "spruce_slab",
            "out": "wooden_shovel",
            "count": 1
        },
        {
            "in1": "iron_ingot",
            "in2": "copper_ingot",
            "in3": "spruce_slab",
            "out": "spruce_trapdoor",
            "count": 1
        },
        {
            "in1": "spruce_trapdoor",
            "in2": "spruce_trapdoor",
            "in3": "copper_ingot",
            "out": "spruce_door",
            "count": 1
        },
        {
            "in1": "wooden_shovel",
            "in2": "wooden_shovel",
            "in3": "spruce_door",
            "out": "spruce_boat",
            "count": 1
        },
        {
            "in1": "spruce_pressure_plate",
            "in2": "spruce_pressure_plate",
            "in3": "spruce_pressure_plate",
            "out": "chest",
            "count": 1
        },
        {
            "in1": "glass",
            "in2": "glass",
            "in3": "glass",
            "out": "glass_bottle",
            "count": 15
        },
        {
            "in1": "ghast_tear",
            "in2": "ghast_tear",
            "in3": "ghast_tear",
            "out": "prismarine_crystals",
            "count": 1
        },
        {
            "in1": "prismarine_crystals",
            "in2": "prismarine_crystals",
            "in3": "soul_sand",
            "out": "ghast_spawn_egg",
            "count": 6
        },
        {
            "in1": "netherrack",
            "in2": "honey_bottle",
            "in3": "red_nether_bricks",
            "out": "magma_block",
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
        },
        {
            "input": "tinted_glass",
            "output": "glass"
        },
        {
            "input": "brown_dye",
            "output": "spruce_pressure_plate"
        },
        {
            "input": "glass_bottle",
            "output": "allay_spawn_egg"
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
        },
        {
            "side": "blaze_rod",
            "top": "anvil",
            "count": 2,
            "out": "blaze_powder"
        },
        {
            "side": "cracked_nether_bricks",
            "top": "anvil",
            "count": 1,
            "out": "brown_concrete_powder"
        },
        {
            "side": "spruce_planks",
            "top": "obsidian",
            "count": 4,
            "out": "brown_dye"
        },
        {
            "side": "end_crystal",
            "top": "obsidian",
            "count": 1,
            "out": "ghast_tear"
        },
        {
            "side": "obsidian",
            "top": "obsidian",
            "count": 5,
            "out": "black_dye"
        },
        {
            "side": "amethyst_block",
            "top": "anvil",
            "count": 1,
            "out": "purple_concrete_powder"
        }
    ],
    "flashbaker": [
        {
            "input": "netherrack",
            "output": "nether_bricks"
        },
        {
            "input": "tinted_glass",
            "output": "cyan_stained_glass"
        },
        {
            "input": "black_concrete_powder",
            "output": "blackstone"
        },
        {
            "input": "resin_clump",
            "output": "resin_brick"
        },
        {
            "input": "glass_bottle",
            "output": "honey_bottle"
        },
        {
            "input": "purple_concrete_powder",
            "output": "crying_obsidian"
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
        },
        {
            "input": "torch",
            "output": "soul_torch"
        },
        {
            "input": "breeze_rod",
            "output": "blaze_rod"
        },
        {
            "input": "sand",
            "output": "red_sand"
        },
        {
            "input": "copper_ingot",
            "output": "resin_clump"
        },
        {
            "input": "blackstone",
            "output": "polished_blackstone"
        },
        {
            "input": "gilded_blackstone",
            "output": "obsidian"
        },
        {
            "input": "smooth_sandstone",
            "output": "end_stone_bricks"
        },
        {
            "input": "stone_bricks",
            "output": "chiseled_stone_bricks"
        },
        {
            "input": "nether_bricks",
            "output": "red_nether_bricks"
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
        },
        {
            "in1": "cyan_stained_glass",
            "in2": "soul_torch",
            "in3": "end_rod",
            "count": 1,
            "out": "breeze_rod"
        },
        {
            "in1": "glass_bottle",
            "in2": "allay_spawn_egg",
            "in3": "ghast_spawn_egg",
            "count": 1,
            "out": "experience_bottle"
        },
        {
            "in1": "black_dye",
            "in2": "coal_block",
            "in3": "honey_bottle",
            "count": 1,
            "out": "echo_shard"
        },
        {
            "in1": "chiseled_stone_bricks",
            "in2": "magma_block",
            "in3": "end_stone_bricks",
            "count": 1,
            "out": "gray_concrete_powder"
        },
        {
            "in1": "gray_concrete_powder",
            "in2": "crying_obsidian",
            "in3": "experience_bottle",
            "count": 1,
            "out": "bedrock"
        },
    ],
    "explosive_furnace": [
        {
            "input": "raw_gold",
            "output": "gold_ingot",
            "alt": True
        },
        {
            "input": "birch_wood",
            "output": "coal_block",
            "alt": True
        }
    ]
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
        "description": "Moves items up",
        "item_model": "fb:elevator"
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
        "description": "Takes one item from the stack.",
        "item_model": "fb:limiter"
    },
    {
        "name": "Splitter",
        "id": "splitter",
        "model": "lapis_block",
        "price": 750_000,
        "description": "Splits an item stream into two.",
        "item_model": "fb:splitter"
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
        "description": "Used for various recipes.",
        "item_model": "fb:crafter_2"
    },
    {
        "name": "Crafter (3 inputs)",
        "id": "crafter_3",
        "model": "crafter",
        "price": 5_000_000,
        "description": "Used for various recipes.",
        "item_model": "fb:crafter_3"
    },
    {
        "name": "Washer",
        "id": "washer",
        "model": "water_bucket",
        "price": 50 * 10 ** 6,
        "description": "Used for various recipes.",
        "item_model": "fb:water_cauldron"
    },
    {
        "name": "Crusher",
        "id": "crusher",
        "model": "smoker",
        "price": 5 * 10 ** 9,
        "description": "Used for various recipes.",
        "item_model": "fb:crusher"
    },
    {
        "name": "Flashbaker",
        "id": "flashbaker",
        "model": "lava_bucket",
        "price": 4 * 10 ** 9,
        "description": "Used for various recipes.",
        "item_model": "fb:lava_cauldron"
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
        "description": "Used for various recipes.",
        "item_model": "fb:zapper"
    },
    {
        "name": "Explosive Furnace",
        "id": "explosive_furnace",
        "model": "furnace",
        "price": 5 * 10 ** 18,
        "description": "Used for various recipes.",
        "item_model": "fb:explosive_furnace"
    }
]

RECIPE_TYPE_DISPLAY = {
    "generator": "trial_spawner",
    "cutter": "stonecutter",
    "furnace": "blast_furnace",
    "crafter_2": "fb:crafter_2",
    "crafter_3": "fb:crafter_3",
    "washer": "fb:water_cauldron",
    "crusher": "smoker",
    "flashbaker": "fb:lava_cauldron",
    "enchanter": "enchanting_table",
    "sonic_zapper": "reinforced_deepslate",
    "explosive_furnace": "fb:explosive_furnace"
}
RECIPE_TYPE_NAME = {
    "generator": "Farm",
    "cutter": "Block Cutter",
    "furnace": "Furnace",
    "crafter_2": "Crafter (2 inputs)",
    "crafter_3": "Crafter (3 inputs)",
    "washer": "Washer",
    "crusher": "Crusher",
    "flashbaker": "Flashbaker",
    "enchanter": "Enchanter",
    "sonic_zapper": "Sonic Zapper",
    "explosive_furnace": "Explosive Furnace"
}

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

# generate item ids
item_to_id = {}
item_id = 0
for item in ITEMS:
    item_to_id[item] = item_id
    item_id += 1

# generate recipe lookup table
# every item will have one primary recipe and zero or more secondary recipes
# item_id will link to primary recipe. alternative recipes are counted on their own
alt_recipe_id = 0
item_recipes = {}
for item in ITEMS:
    item_recipes[item] = {}
    item_recipes[item]["alt"] = []
    for recipe_type in RECIPES:
        for recipe in RECIPES[recipe_type]:
            out = recipe["output" if "output" in recipe else "out"]
            if out != item:
                continue
            if not "alt" in recipe:
                item_recipes[item]["primary"] = {
                    "type": recipe_type,
                    "recipe": recipe,
                    "recipe_id": item_to_id[item]
                }
            else:
                item_recipes[item]["alt"].append({
                    "type": recipe_type,
                    "recipe": recipe,
                    "recipe_id": 1000 + alt_recipe_id
                })
                alt_recipe_id += 1
    for gen in GENERATORS:
        if gen["output"] != item:
            continue
        if not "alt" in gen:
            item_recipes[item]["primary"] = {
                "type": "generator",
                "recipe": {
                    "output": item
                },
                "recipe_id": item_to_id[item]
            }
        else:
            item_recipes[item]["alt"].append({"type": "generator", "recipe": { "output": item },"recipe_id": 1000 + alt_recipe_id})
            alt_recipe_id += 1

for gen in GENERATORS:
    # loot table generator
    with open("data/code/loot_table/blocks/generator/" + gen["id"] + ".json", "w") as f:
        f.write(TEMPLATE_LOOT_TABLE\
                .replace("%name%", gen["name"])\
                .replace("%id%", gen["id"])\
                .replace("%model%", gen["model"]))
    # backbone
    if gen["type"] == "container":
        with open("data/code/function/blocks/backbone/generator/" + gen["id"] + ".mcfunction", "w") as f:
            f.write('setblock ~ ~ ~ %gen_block%\nsummon block_display ~.5 ~.5 ~.5 {Tags:["block","block.this","block.generator","block.container","block.generator.%id%"],view_range:0}'\
                    .replace("%gen_block%", gen["gen_block"])\
                    .replace("%id%", gen["id"]))
    else:
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
        f.write("""execute as @s[tag=block.generator.%id%] run return run summon item_display ~ ~ ~ {item:{id:"%output%",count:1},teleport_duration:20,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,-.23f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},view_range:0.25,Tags:["item","item.this","itemid.%output%"],CustomName:'"1"',CustomNameVisible:true}\n""".replace("%id%", gen["id"]).replace("%output%", gen["output"]))
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
            
# Explosive Furnace recipes
with open("data/code/function/logic/explosive_furnace.recipes.mcfunction", "w") as f:
    for recipe in RECIPES["explosive_furnace"]:
        f.write("""execute as @s[tag=itemid.%input%] run return run function code:logic/explosive_furnace/%output%\n"""\
                .replace("%input%", recipe["input"]).replace("%output%", recipe["output"]))
        with open("data/code/function/logic/explosive_furnace/%.mcfunction".replace("%", recipe["output"]), "w") as g:
            g.write('data modify entity @s item.id set value "minecraft:%output%"\ntag @s remove itemid.%input%\ntag @s add itemid.%output%'\
                    .replace("%input%", recipe["input"]).replace("%output%", recipe["output"]))
        if not recipe["output"] in ITEMS:
            print("[recipe/explosive_furnace] Unpriced item " + recipe["output"])

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
with open("data/code/function/shop_pages.mcfunction", "w") as f, open("data/code/function/shop/shop_logic/tick.update.mcfunction", "w") as g:
    g.write("data modify block 29999999 -64 0 Items set from block 29999998 -64 0 Items\n")
    # Page 0
    f.write("setblock 29999999 -64 0 barrel\ndata modify block 29999999 -64 0 CustomName set value '\"Shop\"'\nsetblock 29999998 -64 0 barrel\ndata remove block 29999998 -64 0 Items\n")
    page = 0
    i = 0
    for item in SHOP_ITEMS:
        if i == 24:
            # end of current page
            if page == 0:
                f.write("""data modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{hide_tooltip:{},item_model:"fb:full"},Slot:8}\ndata modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{hide_tooltip:{},item_model:"fb:full"},Slot:17}\ndata modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{item_name:'"Next Page"',rarity:"common",custom_data:{shop_item:1b,next_page:1b},item_model:"fb:next"},Slot:26}\n""".replace("%", str(page)))
            else:
                f.write("""data modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{item_name:'"Prev Page"',rarity:"common",custom_data:{shop_item:1b,prev_page:1b},item_model:"fb:prev"},Slot:8}\ndata modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{hide_tooltip:{},item_model:"fb:full"},Slot:17}\ndata modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{item_name:'"Next Page"',rarity:"common",custom_data:{shop_item:1b,next_page:1b},item_model:"fb:next"},Slot:26}\n""".replace("%", str(page)))
            # start new one
            page += 1
            i = 0
            f.write("setblock 29999999 -64 % barrel\ndata modify block 29999999 -64 % CustomName set value '\"Shop\"'\n\nsetblock 29999998 -64 % barrel\ndata remove block 29999998 -64 % Items\n".replace("%", str(page)))
            g.write("data modify block 29999999 -64 % Items set from block 29999998 -64 % Items\n".replace("%", str(page)))

        # convert i to slot
        ii = i // 8
        jj = i % 8
        k = ii * 9 + jj
        f.write("""data modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{item_name:'"@name@"',rarity:"common",item_model:"@model@",lore:['[{"text":"Price: ","color":"gray","italic":false},{"text":"$@price@","color":"green","italic":false}]','[{"text":"@description@","color":"gray","italic":false}]'],custom_data:{shop:"@id@",shop_item:1b}@item_model@},Slot:&}\n"""\
            .replace("%", str(page)).replace("&", str(k))\
            .replace("@model@", item["model"])\
            .replace("@name@", item["name"])\
            .replace("@id@", item["id"])\
            .replace("@price@", number_to_human(item["price"]))\
            .replace("@description@", item["description"])\
            .replace("@item_model@", ',"item_model":"{}"'.format(item["item_model"]) if "item_model" in item else ""))
        i += 1
    # end of last page
    # fill with stained glass
    while i < 24:
        ii = i // 8
        jj = i % 8
        k = ii * 9 + jj
        f.write("""data modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{hide_tooltip:{},item_model:"fb:full"},Slot:&}\n"""\
                .replace("%", str(page)).replace("&", str(k)))
        i += 1
    if page == 0:
        f.write("""data modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{hide_tooltip:{},item_model:"fb:full"},Slot:8}\ndata modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{hide_tooltip:{}},Slot:17}\ndata modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{hide_tooltip:{},item_model:"fb:full"},Slot:26}""".replace("%", str(page)))
    else:
        f.write("""data modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{item_name:'"Prev Page"',rarity:"common",custom_data:{shop_item:1b,prev_page:1b},item_model:"fb:prev"},Slot:8}\ndata modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{hide_tooltip:{},item_model:"fb:full"},Slot:17}\ndata modify block 29999998 -64 % Items append value {id:"jigsaw",count:1,components:{hide_tooltip:{},item_model:"fb:full"},Slot:26}""".replace("%", str(page)))

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


# export json
non_alt_recipes = {}
for recipe_type in RECIPES:
    non_alt_recipes[recipe_type] = []
    for recipe in RECIPES[recipe_type]:
        if not "alt" in recipe:
            non_alt_recipes[recipe_type].append(recipe)
import json
with open("data.js", "w") as f:
    f.write("const ITEMS="+json.dumps(ITEMS)+";")
    f.write("const ITEM_TRANSLATE="+json.dumps(ITEM_TRANSLATE)+";")
    f.write("const RECIPES="+json.dumps(non_alt_recipes)+";")
with open("fb.generator.json", "w") as f:
    gen_list = {}
    for gen in GENERATORS:
        gen_list["generator." + gen["id"]] = [gen["gen_block"]]
    f.write(json.dumps(gen_list))

def render_recipe(f, super_recipe):
    recipe_type = super_recipe["type"]
    recipe = super_recipe["recipe"]
    target_item = recipe["output" if "output" in recipe else "out"]
    recipe_id = super_recipe["recipe_id"]
    (x,y,z) = (29999984 + recipe_id % 16, 319 - recipe_id // 256, recipe_id // 16 % 16)
    occupied_slots = []
    # make original/copy barrel
    f.write("setblock {0} {1} {2} barrel\ndata remove block {0} {1} {2} Items\n".format(x, y, z))
    if recipe_type == "generator":
        f.write('data modify block {0} {1} {2} CustomName set value \'{{"text":"-g","font":"fb:gui","color":"white"}}\'\n'.format(x,y,z))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:13}}\n'\
            .format(x,y,z,recipe["output"],recipe_id,ITEM_TRANSLATE[recipe["output"]], price=number_to_human(ITEMS[recipe["output"]])))
        occupied_slots = [13]
    elif recipe_type == "cutter":
        f.write('data modify block {0} {1} {2} CustomName set value \'{{"text":"-0","font":"fb:gui","color":"white"}}\'\n'.format(x,y,z))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:11}}\n'\
                .format(x,y,z,recipe["input"],item_to_id[recipe["input"]],ITEM_TRANSLATE[recipe["input"]], price=number_to_human(ITEMS[recipe["input"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:{6},components:{{max_damage:-1,max_stack_size:64,custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:15}}\n'\
                .format(x,y,z,recipe["output"],recipe_id,ITEM_TRANSLATE[recipe["output"]],recipe["mul"], price=number_to_human(ITEMS[recipe["output"]])))
        occupied_slots = [11, 15]
        dependency(recipe["input"], recipe["output"])
    elif recipe_type == "furnace":
        f.write('data modify block {0} {1} {2} CustomName set value \'{{"text":"-1","font":"fb:gui","color":"white"}}\'\n'.format(x,y,z))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:11}}\n'\
                .format(x,y,z,recipe["input"],item_to_id[recipe["input"]],ITEM_TRANSLATE[recipe["input"]], price=number_to_human(ITEMS[recipe["input"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:15}}\n'\
                .format(x,y,z,recipe["output"],recipe_id,ITEM_TRANSLATE[recipe["output"]], price=number_to_human(ITEMS[recipe["output"]])))
        occupied_slots = [11, 15]
        dependency(recipe["input"], recipe["output"])
    elif recipe_type == "crafter_2":
        f.write('data modify block {0} {1} {2} CustomName set value \'{{"text":"-2","font":"fb:gui","color":"white"}}\'\n'.format(x,y,z))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:2}}\n'\
                .format(x,y,z,recipe["in1"],item_to_id[recipe["in1"]],ITEM_TRANSLATE[recipe["in1"]], price=number_to_human(ITEMS[recipe["in1"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:20}}\n'\
                .format(x,y,z,recipe["in2"],item_to_id[recipe["in2"]],ITEM_TRANSLATE[recipe["in2"]], price=number_to_human(ITEMS[recipe["in2"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:{6},components:{{max_damage:-1,max_stack_size:64,custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:15}}\n'\
                .format(x,y,z,recipe["out"],recipe_id,ITEM_TRANSLATE[recipe["out"]],recipe["count"], price=number_to_human(ITEMS[recipe["out"]])))
        occupied_slots = [2, 20, 15]
        dependency(recipe["in1"], recipe["out"])
        dependency(recipe["in2"], recipe["out"])
    elif recipe_type == "crafter_3":
        f.write('data modify block {0} {1} {2} CustomName set value \'{{"text":"-3","font":"fb:gui","color":"white"}}\'\n'.format(x,y,z))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:2}}\n'\
                .format(x,y,z,recipe["in1"],item_to_id[recipe["in1"]],ITEM_TRANSLATE[recipe["in1"]], price=number_to_human(ITEMS[recipe["in1"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:20}}\n'\
                .format(x,y,z,recipe["in2"],item_to_id[recipe["in2"]],ITEM_TRANSLATE[recipe["in2"]], price=number_to_human(ITEMS[recipe["in2"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:10}}\n'\
                .format(x,y,z,recipe["in3"],item_to_id[recipe["in3"]],ITEM_TRANSLATE[recipe["in3"]], price=number_to_human(ITEMS[recipe["in3"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:{6},components:{{max_damage:-1,max_stack_size:64,custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:15}}\n'\
                .format(x,y,z,recipe["out"],recipe_id,ITEM_TRANSLATE[recipe["out"]],recipe["count"], price=number_to_human(ITEMS[recipe["out"]])))
        occupied_slots = [2, 20, 10, 15]
        dependency(recipe["in1"], recipe["out"])
        dependency(recipe["in2"], recipe["out"])
        dependency(recipe["in3"], recipe["out"])
    elif recipe_type == "washer":
        f.write('data modify block {0} {1} {2} CustomName set value \'{{"text":"-4","font":"fb:gui","color":"white"}}\'\n'.format(x,y,z))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:11}}\n'\
                .format(x,y,z,recipe["input"],item_to_id[recipe["input"]],ITEM_TRANSLATE[recipe["input"]], price=number_to_human(ITEMS[recipe["input"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:15}}\n'\
                .format(x,y,z,recipe["output"],recipe_id,ITEM_TRANSLATE[recipe["output"]], price=number_to_human(ITEMS[recipe["output"]])))
        occupied_slots = [11, 15]
        dependency(recipe["input"], recipe["output"])
    elif recipe_type == "crusher":
        f.write('data modify block {0} {1} {2} CustomName set value \'{{"text":"-5","font":"fb:gui","color":"white"}}\'\n'.format(x,y,z))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:3}}\n'\
                .format(x,y,z,recipe["top"],item_to_id[recipe["top"]],ITEM_TRANSLATE[recipe["top"]], price=number_to_human(ITEMS[recipe["top"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:10}}\n'\
                .format(x,y,z,recipe["side"],item_to_id[recipe["side"]],ITEM_TRANSLATE[recipe["side"]], price=number_to_human(ITEMS[recipe["side"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:{6},components:{{max_damage:-1,max_stack_size:64,custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:15}}\n'\
                .format(x,y,z,recipe["out"],recipe_id,ITEM_TRANSLATE[recipe["out"]],recipe["count"], price=number_to_human(ITEMS[recipe["out"]])))
        occupied_slots = [3, 10, 15]
        dependency(recipe["side"], recipe["out"])
        dependency(recipe["top"], recipe["out"])
    elif recipe_type == "flashbaker":
        f.write('data modify block {0} {1} {2} CustomName set value \'{{"text":"-6","font":"fb:gui","color":"white"}}\'\n'.format(x,y,z))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:11}}\n'\
                .format(x,y,z,recipe["input"],item_to_id[recipe["input"]],ITEM_TRANSLATE[recipe["input"]], price=number_to_human(ITEMS[recipe["input"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:15}}\n'\
                .format(x,y,z,recipe["output"],recipe_id,ITEM_TRANSLATE[recipe["output"]], price=number_to_human(ITEMS[recipe["output"]])))
        occupied_slots = [11, 15]
        dependency(recipe["input"], recipe["output"])
    elif recipe_type == "sonic_zapper":
        f.write('data modify block {0} {1} {2} CustomName set value \'{{"text":"-7","font":"fb:gui","color":"white"}}\'\n'.format(x,y,z))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:11}}\n'\
                .format(x,y,z,recipe["input"],item_to_id[recipe["input"]],ITEM_TRANSLATE[recipe["input"]], price=number_to_human(ITEMS[recipe["input"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:15}}\n'\
                .format(x,y,z,recipe["output"],recipe_id,ITEM_TRANSLATE[recipe["output"]], price=number_to_human(ITEMS[recipe["output"]])))
        occupied_slots = [11, 15]
        dependency(recipe["input"], recipe["output"])
    elif recipe_type == "enchanter":
        f.write('data modify block {0} {1} {2} CustomName set value \'{{"text":"-8","font":"fb:gui","color":"white"}}\'\n'.format(x,y,z))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:2}}\n'\
                .format(x,y,z,recipe["in1"],item_to_id[recipe["in1"]],ITEM_TRANSLATE[recipe["in1"]], price=number_to_human(ITEMS[recipe["in1"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:20}}\n'\
                .format(x,y,z,recipe["in2"],item_to_id[recipe["in2"]],ITEM_TRANSLATE[recipe["in2"]], price=number_to_human(ITEMS[recipe["in2"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:10}}\n'\
                .format(x,y,z,recipe["in3"],item_to_id[recipe["in3"]],ITEM_TRANSLATE[recipe["in3"]], price=number_to_human(ITEMS[recipe["in3"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:{6},components:{{max_damage:-1,max_stack_size:64,custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:15}}\n'\
                .format(x,y,z,recipe["out"],recipe_id,ITEM_TRANSLATE[recipe["out"]],recipe["count"], price=number_to_human(ITEMS[recipe["out"]])))
        occupied_slots = [2, 10, 15, 20]
        dependency(recipe["in1"], recipe["out"])
        dependency(recipe["in2"], recipe["out"])
        dependency(recipe["in3"], recipe["out"])
    elif recipe_type == "explosive_furnace":
        f.write('data modify block {0} {1} {2} CustomName set value \'{{"text":"-9","font":"fb:gui","color":"white"}}\'\n'.format(x,y,z))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:11}}\n'\
                .format(x,y,z,recipe["input"],item_to_id[recipe["input"]],ITEM_TRANSLATE[recipe["input"]], price=number_to_human(ITEMS[recipe["input"]])))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:15}}\n'\
                .format(x,y,z,recipe["output"],recipe_id,ITEM_TRANSLATE[recipe["output"]], price=number_to_human(ITEMS[recipe["output"]])))
        occupied_slots = [11, 15]
        dependency(recipe["input"], recipe["output"])
    # add alt recipes
    j = 0
    for alt in item_recipes[target_item]["alt"] + [item_recipes[target_item]["primary"]]:
        if alt["recipe_id"] == recipe_id:
            continue
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:crafting_table",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{3}}},item_name:\'"{4}"\',lore:[\'{{"text":"Alternative recipe","color":"gray"}}\'],item_model:"{5}"}},Slot:{6}}}\n'\
                .format(x,y,z,alt["recipe_id"],RECIPE_TYPE_NAME[alt["type"]],RECIPE_TYPE_DISPLAY[alt["type"]],j * 9 + 8))
        occupied_slots.append(j * 9 + 8)
        j += 1
    f.write('data modify block {0} {1} {2} Items append value {{id:"book",count:1,components:{{item_name:\'"Back to list"\',custom_data:{{recipe:1b,recipe_id:2000}}}},Slot:18}}\n'.format(x,y,z))
    occupied_slots.append(18)
    # fill empty slots
    for i in range(27):
        if i in occupied_slots:
            continue
        item_model = "air" if not i in [8,17,26] else "fb:full"
        f.write('data modify block {} {} {} Items append value {{id:"jigsaw",count:1,components:{{hide_tooltip:{{}},item_model:"{}"}},Slot:{}}}\n'.format(x,y,z,item_model,i))
# recipe JEI
# start at 29999984 319 0
# gui barrels:
# original x y z
# copy to open x y z+1
component_used_in = {}
def dependency(dep, result):
    if not dep in component_used_in:
        component_used_in[dep] = []
    if not result in component_used_in[dep]:
        component_used_in[dep].append(result)

with open("data/code/function/jei/barrels.mcfunction", "w") as f:
    for item in ITEMS:
        recipe_id = item_to_id[item]
        render_recipe(f, item_recipes[item]["primary"])
        for alt in item_recipes[item]["alt"]:
            render_recipe(f, alt)

    # recipe rJEI
    # start at 29999984 300 0
    # gui barrels:
    # original x y z
    # copy to open x y z+1
    for item in ITEMS:
        recipe_id = item_to_id[item]
        # recipe_id used in other recipes
        (x,y,z) = (29999984 + recipe_id % 16, 300 - recipe_id // 256, recipe_id // 16 % 16)
        # make original/copy barrel
        f.write("setblock {0} {1} {2} barrel\ndata remove block {0} {1} {2} Items\n".format(x, y, z))
        f.write('data modify block {0} {1} {2} CustomName set value \'"Recipes using the item"\'\n'.format(x,y,z))
        k = 0
        if item in component_used_in:
            for supper in component_used_in[item]:
                f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:{6}}}\n'\
                    .format(x,y,z,supper,item_to_id[supper],ITEM_TRANSLATE[supper], k, price=number_to_human(ITEMS[supper])))
                k += 1
        for j in range(k, 25):
            f.write('data modify block {} {} {} Items append value {{id:"jigsaw",count:1,components:{{hide_tooltip:{{}},item_model:"fb:full"}},Slot:{}}}\n'.format(x,y,z,j))
        f.write('data modify block {0} {1} {2} Items append value {{id:"book",count:1,components:{{item_name:\'"Back to list"\',custom_data:{{recipe:1b,recipe_id:2000}}}},Slot:25}}\n'.format(x,y,z))
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:26}}\n'\
            .format(x,y,z,item,item_to_id[item],ITEM_TRANSLATE[item], price=number_to_human(ITEMS[item])))
    
    # phase out book in favor of item browser

    # price ascending view
    # first barrel boiler
    barrel_id = 2000
    first_barrel = True
    (x,y,z) = (29999984 + barrel_id % 16, 319 - barrel_id // 256, barrel_id // 16 % 16)
    f.write('setblock {0} {1} {2} barrel\ndata remove block {0} {1} {2} Items\n'.format(x,y,z))
    f.write('data modify block {0} {1} {2} CustomName set value \'"Items ordered by price (1/{count})"\'\n'.format(x,y,z,count = (len(ITEMS) + 23) // 24))
    i = 0
    for item in dict(sorted(ITEMS.items(), key=lambda item: item[1])):
        if i == 24:
            # finish barrel
            if first_barrel:
                f.write('data modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{hide_tooltip:{{}},item_model:"fb:full"}},Slot:8}}\n'.format(x,y,z))
            else:
                f.write('data modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{item_name:\'"Prev Page"\',rarity:"common",item_model:"fb:prev",custom_data:{{recipe:1b,recipe_id:{3}}}}},Slot:8}}\n'.format(x,y,z,barrel_id - 1))
            f.write('data modify block {0} {1} {2} Items append value {{id:"name_tag",count:1,components:{{item_name:\'"Order by name"\',custom_data:{{recipe:1b,recipe_id:2100}}}},Slot:17}}\ndata modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{item_name:\'"Next Page"\',rarity:"common",item_model:"fb:next",custom_data:{{recipe:1b,recipe_id:{3}}}}},Slot:26}}\n'.format(x,y,z,barrel_id + 1))
            first_barrel = False
            barrel_id += 1
            # start next barrel
            (x,y,z) = (29999984 + barrel_id % 16, 319 - barrel_id // 256, barrel_id // 16 % 16)
            f.write('setblock {0} {1} {2} barrel\ndata remove block {0} {1} {2} Items\n'.format(x,y,z))
            f.write('data modify block {0} {1} {2} CustomName set value \'"Items ordered by price ({page}/{count})"\'\n'.format(x,y,z,page=barrel_id - 2000 + 1,count = (len(ITEMS) + 23) // 24))
            i = 0
        # calculate slot
        slot = i // 8 * 9 + i % 8
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:{6}}}\n'\
                .format(x,y,z,item,item_to_id[item],ITEM_TRANSLATE[item],slot, price=number_to_human(ITEMS[item])))
        i += 1
    # finish last barrel
    while i < 24:
        slot = i // 8 * 9 + i % 8
        f.write('data modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{hide_tooltip:{{}},item_model:"fb:full"}},Slot:{3}}}\n'\
            .format(x,y,z,slot))
        i += 1
    if first_barrel:
        f.write('data modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{hide_tooltip:{{}},item_model:"fb:full"}},Slot:8}}\n'.format(x,y,z))
    else:
        f.write('data modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{item_name:\'"Prev Page"\',rarity:"common",item_model:"fb:prev",custom_data:{{recipe:1b,recipe_id:{3}}}}},Slot:8}}\n'.format(x,y,z,barrel_id - 1))
    f.write('data modify block {0} {1} {2} Items append value {{id:"name_tag",count:1,components:{{item_name:\'"Order by name"\',custom_data:{{recipe:1b,recipe_id:2100}}}},Slot:17}}\ndata modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{hide_tooltip:{{}},item_model:"fb:full"}},Slot:26}}\n'.format(x,y,z))

    # name sorted view
    # first barrel boiler
    barrel_id = 2100
    first_barrel = True
    (x,y,z) = (29999984 + barrel_id % 16, 319 - barrel_id // 256, barrel_id // 16 % 16)
    f.write('setblock {0} {1} {2} barrel\ndata remove block {0} {1} {2} Items\n'.format(x,y,z))
    f.write('data modify block {0} {1} {2} CustomName set value \'"Items ordered by name (1/{count})"\'\n'.format(x,y,z,count = (len(ITEMS) + 23) // 24))
    i = 0
    for item in dict(sorted(ITEMS.items(), key=lambda item: ITEM_TRANSLATE[item[0]])):
        if i == 24:
            # finish barrel
            if first_barrel:
                f.write('data modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{hide_tooltip:{{}},item_model:"fb:full"}},Slot:8}}\n'.format(x,y,z))
            else:
                f.write('data modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{item_name:\'"Prev Page"\',rarity:"common",item_model:"fb:prev",custom_data:{{recipe:1b,recipe_id:{3}}}}},Slot:8}}\n'.format(x,y,z,barrel_id - 1))
            f.write('data modify block {0} {1} {2} Items append value {{id:"emerald",count:1,components:{{item_name:\'"Order by price"\',custom_data:{{recipe:1b,recipe_id:2000}}}},Slot:17}}\ndata modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{item_name:\'"Next Page"\',rarity:"common",item_model:"fb:next",custom_data:{{recipe:1b,recipe_id:{3}}}}},Slot:26}}\n'.format(x,y,z,barrel_id + 1))
            first_barrel = False
            barrel_id += 1
            # start next barrel
            (x,y,z) = (29999984 + barrel_id % 16, 319 - barrel_id // 256, barrel_id // 16 % 16)
            f.write('setblock {0} {1} {2} barrel\ndata remove block {0} {1} {2} Items\n'.format(x,y,z))
            f.write('data modify block {0} {1} {2} CustomName set value \'"Items ordered by name ({page}/{count})"\'\n'.format(x,y,z,page=barrel_id - 2100 + 1,count = (len(ITEMS) + 23) // 24))
            i = 0
        # calculate slot
        slot = i // 8 * 9 + i % 8
        f.write('data modify block {0} {1} {2} Items append value {{id:"minecraft:{3}",count:1,components:{{custom_data:{{recipe:1b,recipe_id:{4}}},item_name:\'"{5}"\',lore:[\'{{"text":"${price}","color":"green","italic":false}}\']}},Slot:{6}}}\n'\
                .format(x,y,z,item,item_to_id[item],ITEM_TRANSLATE[item],slot, price=number_to_human(ITEMS[item])))
        i += 1
    # finish last barrel
    while i < 24:
        slot = i // 8 * 9 + i % 8
        f.write('data modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{hide_tooltip:{{}},item_model:"fb:full"}},Slot:{3}}}\n'\
            .format(x,y,z,slot))
        i += 1
    if first_barrel:
        f.write('data modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{hide_tooltip:{{}},item_model:"fb:full"}},Slot:8}}\n'.format(x,y,z))
    else:
        f.write('data modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{item_name:\'"Prev Page"\',rarity:"common",item_model:"fb:prev",custom_data:{{recipe:1b,recipe_id:{3}}}}},Slot:8}}\n'.format(x,y,z,barrel_id - 1))
    f.write('data modify block {0} {1} {2} Items append value {{id:"emerald",count:1,components:{{item_name:\'"Order by price"\',custom_data:{{recipe:1b,recipe_id:2000}}}},Slot:17}}\ndata modify block {0} {1} {2} Items append value {{id:"jigsaw",count:1,components:{{hide_tooltip:{{}},item_model:"fb:full"}},Slot:26}}\n'.format(x,y,z))