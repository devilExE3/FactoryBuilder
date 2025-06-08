import os

GENERATORS = [
    {
        "name": "Oak Tree Farm",
        "model": "oak_sapling",
        "output": "oak_log",
        "gen_block": "petrified_oak_slab[type=double]",
        "price": 150,
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
        "price": 1 * 10 ** 9,
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
    "raw_copper": 1_000_000,
    "copper_ingot": 1_500_000,
    "glowstone_dust": 1_000_000,
    "orange_dye": 1_700_000,
    "gunpowder": 1_200_000,
    "tnt": 1_600_000,
    "coal_block": 2_000_000,
    "raw_iron": 1_500_000,
    "iron_ingot": 2_250_000,
    "iron_door": 10_000_000,
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
    "iron_door": "Iron Door"
}

RECIPES = {
    "cutter": [
        # cutter recipes
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
        }
    ],
    "furnace": [
        # furnace recipes
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
        }
    ],
    "crafter_2": [
        # crafter_2 recipes
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
        }
    ],
    "crafter_3": [
        # crafter_3 recipes
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
        }
    ]
}

SHOP_ITEMS = [
    {
        "name": "Conveyor",
        "id": "conveyor",
        "model": "gray_carpet",
        "price": 10
    },
    {
        "name": "Chute",
        "id": "chute",
        "model": "hopper",
        "price": 25
    },
    {
        "name": "Elevator",
        "id": "elevator",
        "model": "lodestone",
        "price": 75
    },
    {
        "name": "Selling Platform",
        "id": "sell",
        "model": "lime_carpet",
        "price": 50
    },
    {
        "name": "Block Cutter",
        "id": "cutter",
        "model": "stonecutter",
        "price": 500
    },
    {
        "name": "Furnace",
        "id": "furnace",
        "model": "blast_furnace",
        "price": 1_000
    },
    {
        "name": "Crafter (2 inputs)",
        "id": "crafter_2",
        "model": "crafting_table",
        "price": 500_000
    },
    {
        "name": "Crafter (3 inputs)",
        "id": "crafter_3",
        "model": "crafter",
        "price": 100_000_000
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
            f.write("""execute if entity @n[type=item_display,tag=crafting.input,distance=..1.01,tag=itemid.%in1%] if entity @n[type=item_display,tag=crafting.input,distance=..1.01,tag=itemid.%in1%] run return run function code:logic/crafter_2/%out%\n"""\
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
        # TODO: input matches override
        f.write("""execute if entity @n[type=item_display,tag=crafting.input,distance=..1.01,tag=itemid.%in1%] if entity @n[type=item_display,tag=crafting.input,distance=..1.01,tag=itemid.%in2%] if entity @n[type=item_display,tag=crafting.input,distance=..1.01,tag=itemid.%in3%] run return run function code:logic/crafter_3/%out%\n"""\
            .replace("%in1%", recipe["in1"]).replace("%in2%", recipe["in2"]).replace("%in3%", recipe["in3"]).replace("%out%", recipe["out"]))
        with open("data/code/function/logic/crafter_3/%.mcfunction".replace("%", recipe["out"]), "w") as g:
            g.write("""scoreboard players remove @e[type=item_display,tag=crafting.input,distance=..1.01,limit=3] count 1\nscoreboard players set #count math %count%\nsummon item_display ~ ~ ~ {item:{id:"%out%",count:1},teleport_duration:20,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,-.23f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},view_range:0.25,Tags:["item","crafting.output","itemid.%out%"],CustomName:'"1"',CustomNameVisible:true}"""\
                .replace("%in1%", recipe["in1"]).replace("%in2%", recipe["in2"]).replace("%in3%", recipe["in3"]).replace("%out%", recipe["out"]).replace("%count%", str(recipe["count"])))
        if not recipe["out"] in ITEMS:
            print("[recipe/crafter_3] Unpriced item " + recipe["out"])
    f.write("return fail")

# # #  SHOP PAGES  # # #
# convert generators to SHOP_ITEMS
for gen in GENERATORS:
    SHOP_ITEMS.append({
        "name": gen["name"],
        "id": "generator." + gen["id"],
        "model": gen["model"],
        "price": gen["price"]
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
        f.write("""data modify block 29999998 -64 0 Items append value {id:"@model@",count:1,components:{item_name:'"@name@"',lore:['[{"text":"Price: ","color":"gray","italic":false},{"text":"$@price@","color":"green","italic":false}]'],custom_data:{shop:"@id@",shop_item:1b}},Slot:&}\n"""\
            .replace("&", str(k))\
            .replace("@model@", item["model"])\
            .replace("@name@", item["name"])\
            .replace("@id@", item["id"])\
            .replace("@price@", number_to_human(item["price"])))
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
        if item == 0:
            continue
        # execute if items entity @s player.cursor *[custom_data~{shop:"conveyor"}] 
        f.write('execute if items entity @s player.cursor *[custom_data~{shop:"%"}] run return run function code:shop/shop_logic/item/%\n'.replace("%", item["id"]))
        with open("data/code/function/shop/shop_logic/item/%.mcfunction".replace("%", item["id"]), "w") as g:
            g.write("data modify storage numeral:io B set value %price%\nfunction numeral:ext/lda\nexecute if function numeral:gte run return run function code:shop/shop_logic/item/%id%.sell\nfunction code:shop/shop_logic/not_enough_money".replace("%id%", item["id"]).replace("%price%", number_to_numeral(item["price"])))
        with open("data/code/function/shop/shop_logic/item/%.sell.mcfunction".replace("%", item["id"]), "w") as g:
            g.write("loot give @s loot code:blocks/%id%\nfunction code:shop/shop_logic/purchase_ok".replace("%id%", item["id"].replace(".", "/")))
with open("data/code/function/shop/shop_logic/bulk_item.item.mcfunction", "w") as f:
    for item in SHOP_ITEMS:
        if item == 0:
            continue
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
        return ret + '}'

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
    .add_line(BookLineEmpty())\
    .add_line(BookLineEmpty())\
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("    A book about all")))\
    .add_line(BookLine().add_comp(BookComponent("    there is about")))\
    .add_line(BookLine().add_comp(BookComponent("    this minigame.")))\
)
pages.append(BookPage()\
    .add_line(BookLine().add_comp(BookComponent("TABLE").bold(True)).add_comp(BookComponent(" of ")).add_comp(BookComponent("CONTENTS").bold(True)))\
    .add_line(BookLineEmpty())\
    .add_line(BookLine().add_comp(BookComponent("Tutorial").underlined(True).target_page(3)))\
    .add_line(BookLine().add_comp(BookComponent("Items").underlined(True).target_page(7)))\
    .add_line(BookLine().add_comp(BookComponent("Recipes").underlined(True).target_page(9)))\
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
for item in ITEMS:
    if line == 14:
        pages.append(current_page)
        current_page = BookPage()
        line = 0
    current_page.add_line(BookLine().add_comp(BookComponent(ITEM_TRANSLATE[item]).hover(BookComponent("$" + "{:,}".format(ITEMS[item])).color("green"))))
    line += 1
pages.append(current_page)
# recipes
current_page = BookPage().add_line(BookLine().add_comp(BookComponent("^").target_page(2)).add_comp(BookComponent("      RECIPES").bold(True)))
line = 1
for recipe_type in RECIPES:
    for recipe in RECIPES[recipe_type]:
        if line == 14:
            pages.append(current_page)
            current_page = BookPage()
            line = 0
        if recipe_type == "cutter":
            current_page.add_line(BookLine().add_comp(BookComponent(ITEM_TRANSLATE[recipe["output"]]).hover(BookComponent("Block Cutter\\nInput: " + ITEM_TRANSLATE[recipe["input"]] + "\\nOutput: " + ITEM_TRANSLATE[recipe["output"]] + "\\nMultiplicator: " + str(recipe["mul"])).color("white"))))
        elif recipe_type == "furnace":
            current_page.add_line(BookLine().add_comp(BookComponent(ITEM_TRANSLATE[recipe["output"]]).hover(BookComponent("Furnace\\nInput: " + ITEM_TRANSLATE[recipe["input"]] + "\\nOutput: " + ITEM_TRANSLATE[recipe["output"]]).color("white"))))
        elif recipe_type == "crafter_2":
            current_page.add_line(BookLine().add_comp(BookComponent(ITEM_TRANSLATE[recipe["out"]]).hover(BookComponent("Crafter (2 inputs)\\nInputs:\\n- " + ITEM_TRANSLATE[recipe["in1"]] + "\\n- " + ITEM_TRANSLATE[recipe["in2"]] + "\\nOutput: " + str(recipe["count"]) + "x " + ITEM_TRANSLATE[recipe["out"]]).color("white"))))
        elif recipe_type == "crafter_3":
            current_page.add_line(BookLine().add_comp(BookComponent(ITEM_TRANSLATE[recipe["out"]]).hover(BookComponent("Crafter (3 inputs)\\nInputs:\\n- " + ITEM_TRANSLATE[recipe["in1"]] + "\\n- " + ITEM_TRANSLATE[recipe["in2"]] + "\\n- " + ITEM_TRANSLATE[recipe["in3"]] + "\\nOutput: " + str(recipe["count"]) + "x " + ITEM_TRANSLATE[recipe["out"]]).color("white"))))
        else:
            line -= 1
            print("[book/recipe] Unknown recipe type " + recipe_type)
        line += 1
pages.append(current_page)
# compile pages
compiled = ""
for page in pages:
    compiled += '"' + esc_string(page.compile()) + '",'
with open("data/code/loot_table/book.json", "w") as f:
    f.write(BOOK_TEMPLATE.replace("%", compiled[:-1]))