###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.12 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f通常人狼モード"'}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f村人2人生存モード"'}} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f殲滅モード"'}} 1
loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/common/barrier
loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/common/structure_void

## Set Nether Star above Selected Role
execute if score #MWL GameMode matches 1 run loot replace entity @p[tag=Host] inventory.3 loot mwj:setting/common/nether_star_selected
execute if score #MWL GameMode matches 2 run loot replace entity @p[tag=Host] inventory.4 loot mwj:setting/common/nether_star_selected
execute if score #MWL GameMode matches 3 run loot replace entity @p[tag=Host] inventory.5 loot mwj:setting/common/nether_star_selected