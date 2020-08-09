###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.10 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7fなし"'}} 1
replaceitem entity @p[tag=Host] inventory.11 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f1割"'}} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f2割"'}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f3割"'}} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f5割"'}} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f8割"'}} 1
replaceitem entity @p[tag=Host] inventory.16 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f10割"'}} 1
loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/common/barrier
loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/common/structure_void

## Set Nether Star above Glow Time
execute if score #MWL GlowTime matches 0 run loot replace entity @p[tag=Host] inventory.1 loot mwj:setting/common/nether_star_selected
execute if score #MWL GlowTime matches 1 run loot replace entity @p[tag=Host] inventory.2 loot mwj:setting/common/nether_star_selected
execute if score #MWL GlowTime matches 2 run loot replace entity @p[tag=Host] inventory.3 loot mwj:setting/common/nether_star_selected
execute if score #MWL GlowTime matches 3 run loot replace entity @p[tag=Host] inventory.4 loot mwj:setting/common/nether_star_selected
execute if score #MWL GlowTime matches 5 run loot replace entity @p[tag=Host] inventory.5 loot mwj:setting/common/nether_star_selected
execute if score #MWL GlowTime matches 8 run loot replace entity @p[tag=Host] inventory.6 loot mwj:setting/common/nether_star_selected
execute if score #MWL GlowTime matches 10 run loot replace entity @p[tag=Host] inventory.7 loot mwj:setting/common/nether_star_selected