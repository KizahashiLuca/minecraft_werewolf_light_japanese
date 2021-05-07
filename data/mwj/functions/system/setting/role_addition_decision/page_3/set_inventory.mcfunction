####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/role_addition/added_mason
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/role_addition/added_seer
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/role_addition/added_fake_seer
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/role_addition/added_sage
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/role_addition/added_medium

## Set scoreboard
scoreboard players operation #MWL AddedMason = #MWL AddedRole1
scoreboard players operation #MWL AddedSeer = #MWL AddedRole2
scoreboard players operation #MWL AddedFkSeer = #MWL AddedRole3
scoreboard players operation #MWL AddedSage = #MWL AddedRole4
scoreboard players operation #MWL AddedMedium = #MWL AddedRole5