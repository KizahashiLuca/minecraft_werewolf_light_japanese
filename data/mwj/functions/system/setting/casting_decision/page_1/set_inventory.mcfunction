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
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/role_addition/added_wolf
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/role_addition/added_clever_wolf
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/role_addition/added_white_wolf
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/role_addition/added_madman
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/role_addition/added_fanatic

## Set scoreboard
scoreboard players operation #MWL NumOfWolves = #MWL AddedRole1
scoreboard players operation #MWL NumOfClWolves = #MWL AddedRole2
scoreboard players operation #MWL NumOfWhWolves = #MWL AddedRole3
scoreboard players operation #MWL NumOfMadmans = #MWL AddedRole4
scoreboard players operation #MWL NumOfFanatics = #MWL AddedRole5