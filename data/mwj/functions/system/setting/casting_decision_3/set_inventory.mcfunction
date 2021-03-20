###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/role_addition/added_fake_seer
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/role_addition/added_sage
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/role_addition/added_white_wolf
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/role_addition/added_fanatic
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/role_addition/added_immoralist

## Set scoreboard
scoreboard players operation #MWL NumOfFkSeers = #MWL AddedRole1
scoreboard players operation #MWL NumOfSages = #MWL AddedRole2
scoreboard players operation #MWL NumOfWhWolves = #MWL AddedRole3
scoreboard players operation #MWL NumOfFanatics = #MWL AddedRole4
scoreboard players operation #MWL NumOfImmorals = #MWL AddedRole5