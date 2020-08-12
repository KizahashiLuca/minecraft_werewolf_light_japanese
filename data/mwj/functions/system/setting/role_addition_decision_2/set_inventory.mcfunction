###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/role_addition/added_fox
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/role_addition/added_mason
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/role_addition/added_detective
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/role_addition/added_thief
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/role_addition/added_cat

## Set scoreboard
scoreboard players operation #MWL AddedFox = #MWL AddedRole1
scoreboard players operation #MWL AddedMason = #MWL AddedRole2
scoreboard players operation #MWL AddedDetec = #MWL AddedRole3
scoreboard players operation #MWL AddedThief = #MWL AddedRole4
scoreboard players operation #MWL AddedCat = #MWL AddedRole5