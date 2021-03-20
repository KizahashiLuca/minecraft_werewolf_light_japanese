###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/role_addition/added_little_red
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/role_addition/added_clever_wolf
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/role_addition/added_bakery
# loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/role_addition/added_
# loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/role_addition/added_

## Set scoreboard
scoreboard players operation #MWL NumOfLtReds = #MWL AddedRole1
scoreboard players operation #MWL NumOfClWolves = #MWL AddedRole2
scoreboard players operation #MWL NumOfBakeries = #MWL AddedRole3
# scoreboard players operation #MWL NumOf = #MWL AddedRole4
# scoreboard players operation #MWL NumOf = #MWL AddedRole5