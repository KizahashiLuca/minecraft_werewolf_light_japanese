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
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/role_addition/added_fox
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/role_addition/added_immoralist
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/role_addition/added_villager
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/role_addition/added_bakery
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/role_addition/added_lycanthrope

## Set scoreboard
scoreboard players operation #MWL AddedFox = #MWL AddedRole1
scoreboard players operation #MWL AddedImmoral = #MWL AddedRole2
scoreboard players operation #MWL AddedVilla = #MWL AddedRole3
scoreboard players operation #MWL AddedBakery = #MWL AddedRole4
scoreboard players operation #MWL AddedLycant = #MWL AddedRole5