####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/role_addition/added_detective
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/role_addition/added_thief
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/role_addition/added_little_red
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/role_addition/added_cat
# loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/role_addition/added_

## Set scoreboard
scoreboard players operation #MWL NumOfDetectives = #MWL AddedRole1
scoreboard players operation #MWL NumOfThieves = #MWL AddedRole2
scoreboard players operation #MWL NumOfLtReds = #MWL AddedRole3
scoreboard players operation #MWL NumOfCats = #MWL AddedRole4
# scoreboard players operation #MWL NumOf = #MWL AddedRole5