###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.10 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f5分"'}} 1
replaceitem entity @p[tag=Host] inventory.11 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f10分"'}} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f15分"'}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f20分"'}} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f25分"'}} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f30分"'}} 1
replaceitem entity @p[tag=Host] inventory.16 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f60分"'}} 1
loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/common/barrier
loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/common/structure_void

## Set Nether Star above Game Time
execute if score #MWL GameTime matches 1 run loot replace entity @p[tag=Host] inventory.1 loot mwj:setting/common/nether_star_selected
execute if score #MWL GameTime matches 2 run loot replace entity @p[tag=Host] inventory.2 loot mwj:setting/common/nether_star_selected
execute if score #MWL GameTime matches 3 run loot replace entity @p[tag=Host] inventory.3 loot mwj:setting/common/nether_star_selected
execute if score #MWL GameTime matches 4 run loot replace entity @p[tag=Host] inventory.4 loot mwj:setting/common/nether_star_selected
execute if score #MWL GameTime matches 5 run loot replace entity @p[tag=Host] inventory.5 loot mwj:setting/common/nether_star_selected
execute if score #MWL GameTime matches 6 run loot replace entity @p[tag=Host] inventory.6 loot mwj:setting/common/nether_star_selected
execute if score #MWL GameTime matches 12 run loot replace entity @p[tag=Host] inventory.7 loot mwj:setting/common/nether_star_selected