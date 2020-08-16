###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 Aug 2020
## Version: v.1.4
###############################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/game_mode/map_normal_wolf
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/game_mode/map_two_alive
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/game_mode/map_annihilation
loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/common/barrier
loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/common/structure_void

## Set Nether Star above Selected Role
execute if score #MWL GameMode matches 1 run loot replace entity @p[tag=Host] inventory.3 loot mwj:setting/common/nether_star_selected
execute if score #MWL GameMode matches 2 run loot replace entity @p[tag=Host] inventory.4 loot mwj:setting/common/nether_star_selected
execute if score #MWL GameMode matches 3 run loot replace entity @p[tag=Host] inventory.5 loot mwj:setting/common/nether_star_selected