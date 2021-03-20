###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/role_addition/added_wolf
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/role_addition/added_madman
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/role_addition/added_villager
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/role_addition/added_seer
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/role_addition/added_medium

## Set scoreboard
scoreboard players operation #MWL NumOfWolves = #MWL AddedRole1
scoreboard players operation #MWL NumOfMadmans = #MWL AddedRole2
scoreboard players operation #MWL NumOfVillagers = #MWL AddedRole3
scoreboard players operation #MWL NumOfSeers = #MWL AddedRole4
scoreboard players operation #MWL NumOfMediums = #MWL AddedRole5