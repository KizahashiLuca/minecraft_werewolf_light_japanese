###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 Aug 2020
## Version: v.1.4
###############################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.10 loot mwj:setting/game_time/paper_05mins
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/game_time/paper_10mins
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/game_time/paper_15mins
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/game_time/paper_20mins
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/game_time/paper_25mins
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/game_time/paper_30mins
loot replace entity @p[tag=Host] inventory.16 loot mwj:setting/game_time/paper_60mins
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