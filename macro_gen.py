TEMPLATE = "execute as @e[type=item_display,tag=item,scores={stagger.plot=$},x=0] at @s run function code:logic/item\nexecute as @e[type=item_display,tag=item,scores={stagger.plot=$},x=0,predicate=code:count_changed] run function code:logic/item.name"

for i in range(20):
    with open("macro_gen/{}.mcfunction".format(i), "w") as f:
        f.write(TEMPLATE.replace("$", str(i)))
    if i == 0:
        print("function $/0.mcfunction")
    else:
        print("schedule function $/{0} {0}t".format(i))