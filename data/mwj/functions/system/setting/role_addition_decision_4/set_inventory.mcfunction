###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/role_addition/added_little_red
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/role_addition/added_clever_wolf
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/role_addition/added_bakery
# loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/role_addition/added_
# loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/role_addition/added_

## Set scoreboard
scoreboard players operation #MWL AddedLtRed = #MWL AddedRole1
scoreboard players operation #MWL AddedClWolf = #MWL AddedRole2
scoreboard players operation #MWL AddedBakery = #MWL AddedRole3
# scoreboard players operation #MWL Added = #MWL AddedRole4
# scoreboard players operation #MWL Added = #MWL AddedRole5