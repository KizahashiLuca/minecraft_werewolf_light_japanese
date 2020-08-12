###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.10 loot mwj:setting/hide_time/paper_015secs
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/hide_time/paper_030secs
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/hide_time/paper_060secs
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/hide_time/paper_090secs
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/hide_time/paper_120secs
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/hide_time/paper_180secs
loot replace entity @p[tag=Host] inventory.16 loot mwj:setting/hide_time/paper_300secs
loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/common/barrier
loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/common/structure_void


## Set Nether Star above Hide Time
execute if score #MWL HideTime matches 1 run loot replace entity @p[tag=Host] inventory.1 loot mwj:setting/common/nether_star_selected
execute if score #MWL HideTime matches 2 run loot replace entity @p[tag=Host] inventory.2 loot mwj:setting/common/nether_star_selected
execute if score #MWL HideTime matches 4 run loot replace entity @p[tag=Host] inventory.3 loot mwj:setting/common/nether_star_selected
execute if score #MWL HideTime matches 6 run loot replace entity @p[tag=Host] inventory.4 loot mwj:setting/common/nether_star_selected
execute if score #MWL HideTime matches 8 run loot replace entity @p[tag=Host] inventory.5 loot mwj:setting/common/nether_star_selected
execute if score #MWL HideTime matches 12 run loot replace entity @p[tag=Host] inventory.6 loot mwj:setting/common/nether_star_selected
execute if score #MWL HideTime matches 20 run loot replace entity @p[tag=Host] inventory.7 loot mwj:setting/common/nether_star_selected