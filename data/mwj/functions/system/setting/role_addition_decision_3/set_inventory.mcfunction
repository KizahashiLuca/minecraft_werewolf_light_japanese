###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/role_addition/added_fake_seer
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/role_addition/added_sage
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/role_addition/added_white_wolf
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/role_addition/added_fanatic
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/role_addition/added_immoralist

## Set scoreboard
scoreboard players operation #MWL AddedFkSeer = #MWL AddedRole1
scoreboard players operation #MWL AddedSage = #MWL AddedRole2
scoreboard players operation #MWL AddedWhWolf = #MWL AddedRole3
scoreboard players operation #MWL AddedFanatic = #MWL AddedRole4
scoreboard players operation #MWL AddedImmoral = #MWL AddedRole5