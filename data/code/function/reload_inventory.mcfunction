clear @s wooden_pickaxe
execute if items entity @s inventory.0 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.0 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.0
execute if items entity @s inventory.0 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.0 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.0 * run item replace entity @s inventory.0 with air
execute if items entity @s inventory.1 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.1 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.1
execute if items entity @s inventory.1 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.1 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.1 * run item replace entity @s inventory.1 with air
execute if items entity @s inventory.2 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.2 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.2
execute if items entity @s inventory.2 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.2 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.2 * run item replace entity @s inventory.2 with air
execute if items entity @s inventory.3 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.3 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.3
execute if items entity @s inventory.3 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.3 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.3 * run item replace entity @s inventory.3 with air
execute if items entity @s inventory.4 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.4 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.4
execute if items entity @s inventory.4 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.4 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.4 * run item replace entity @s inventory.4 with air
execute if items entity @s inventory.5 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.5 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.5
execute if items entity @s inventory.5 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.5 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.5 * run item replace entity @s inventory.5 with air
execute if items entity @s inventory.6 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.6 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.6
execute if items entity @s inventory.6 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.6 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.6 * run item replace entity @s inventory.6 with air
execute if items entity @s inventory.7 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.7 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.7
execute if items entity @s inventory.7 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.7 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.7 * run item replace entity @s inventory.7 with air
execute if items entity @s inventory.8 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.8 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.8
execute if items entity @s inventory.8 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.8 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.8 * run item replace entity @s inventory.8 with air
execute if items entity @s inventory.9 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.9 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.9
execute if items entity @s inventory.9 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.9 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.9 * run item replace entity @s inventory.9 with air
execute if items entity @s inventory.10 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.10 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.10
execute if items entity @s inventory.10 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.10 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.10 * run item replace entity @s inventory.10 with air
execute if items entity @s inventory.11 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.11 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.11
execute if items entity @s inventory.11 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.11 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.11 * run item replace entity @s inventory.11 with air
execute if items entity @s inventory.12 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.12 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.12
execute if items entity @s inventory.12 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.12 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.12 * run item replace entity @s inventory.12 with air
execute if items entity @s inventory.13 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.13 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.13
execute if items entity @s inventory.13 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.13 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.13 * run item replace entity @s inventory.13 with air
execute if items entity @s inventory.14 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.14 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.14
execute if items entity @s inventory.14 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.14 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.14 * run item replace entity @s inventory.14 with air
execute if items entity @s inventory.15 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.15 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.15
execute if items entity @s inventory.15 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.15 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.15 * run item replace entity @s inventory.15 with air
execute if items entity @s inventory.16 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.16 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.16
execute if items entity @s inventory.16 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.16 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.16 * run item replace entity @s inventory.16 with air
execute if items entity @s inventory.17 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.17 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.17
execute if items entity @s inventory.17 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.17 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.17 * run item replace entity @s inventory.17 with air
execute if items entity @s inventory.18 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.18 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.18
execute if items entity @s inventory.18 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.18 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.18 * run item replace entity @s inventory.18 with air
execute if items entity @s inventory.19 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.19 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.19
execute if items entity @s inventory.19 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.19 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.19 * run item replace entity @s inventory.19 with air
execute if items entity @s inventory.20 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.20 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.20
execute if items entity @s inventory.20 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.20 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.20 * run item replace entity @s inventory.20 with air
execute if items entity @s inventory.21 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.21 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.21
execute if items entity @s inventory.21 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.21 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.21 * run item replace entity @s inventory.21 with air
execute if items entity @s inventory.22 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.22 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.22
execute if items entity @s inventory.22 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.22 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.22 * run item replace entity @s inventory.22 with air
execute if items entity @s inventory.23 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.23 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.23
execute if items entity @s inventory.23 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.23 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.23 * run item replace entity @s inventory.23 with air
execute if items entity @s inventory.24 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.24 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.24
execute if items entity @s inventory.24 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.24 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.24 * run item replace entity @s inventory.24 with air
execute if items entity @s inventory.25 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.25 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.25
execute if items entity @s inventory.25 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.25 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.25 * run item replace entity @s inventory.25 with air
execute if items entity @s inventory.26 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s inventory.26 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s inventory.26
execute if items entity @s inventory.26 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s inventory.26 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s inventory.26 * run item replace entity @s inventory.26 with air
execute if items entity @s hotbar.0 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s hotbar.0 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s hotbar.0
execute if items entity @s hotbar.0 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s hotbar.0 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s hotbar.0 * run item replace entity @s hotbar.0 with air
execute if items entity @s hotbar.1 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s hotbar.1 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s hotbar.1
execute if items entity @s hotbar.1 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s hotbar.1 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s hotbar.1 * run item replace entity @s hotbar.1 with air
execute if items entity @s hotbar.2 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s hotbar.2 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s hotbar.2
execute if items entity @s hotbar.2 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s hotbar.2 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s hotbar.2 * run item replace entity @s hotbar.2 with air
execute if items entity @s hotbar.3 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s hotbar.3 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s hotbar.3
execute if items entity @s hotbar.3 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s hotbar.3 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s hotbar.3 * run item replace entity @s hotbar.3 with air
execute if items entity @s hotbar.4 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s hotbar.4 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s hotbar.4
execute if items entity @s hotbar.4 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s hotbar.4 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s hotbar.4 * run item replace entity @s hotbar.4 with air
execute if items entity @s hotbar.5 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s hotbar.5 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s hotbar.5
execute if items entity @s hotbar.5 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s hotbar.5 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s hotbar.5 * run item replace entity @s hotbar.5 with air
execute if items entity @s hotbar.6 * run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["item.target"],PickupDelay:1s}
execute if items entity @s hotbar.6 * run item replace entity @n[type=item,tag=item.target,distance=..0.01] container.0 from entity @s hotbar.6
execute if items entity @s hotbar.6 * run data modify entity @n[type=item,tag=item.target,distance=..0.01] Owner set from entity @s UUID
execute if items entity @s hotbar.6 * run tag @n[type=item,tag=item.target,distance=..0.01] remove item.target
execute if items entity @s hotbar.6 * run item replace entity @s hotbar.6 with air