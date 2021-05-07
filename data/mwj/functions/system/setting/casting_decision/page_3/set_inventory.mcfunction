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
scoreboard players operation #MWL NumOfMasons = #MWL AddedRole1
scoreboard players operation #MWL NumOfSeers = #MWL AddedRole2
scoreboard players operation #MWL NumOfFkSeers = #MWL AddedRole3
scoreboard players operation #MWL NumOfSages = #MWL AddedRole4
scoreboard players operation #MWL NumOfMediums = #MWL AddedRole5