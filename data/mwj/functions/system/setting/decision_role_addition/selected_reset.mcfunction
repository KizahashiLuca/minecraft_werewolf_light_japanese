###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Reset choice
scoreboard players operation #MWL AddedRole = #MWL PrevAddedRole
scoreboard players set #MWL AddedWolf 0
scoreboard players set #MWL AddedMadman 0
scoreboard players set #MWL AddedFox 0
scoreboard players operation #MWL AddedVilla = #MWL PrevAddedVilla
scoreboard players set #MWL AddedSeer 0
scoreboard players set #MWL AddedMedium 0
scoreboard players set #MWL AddedMason 0
scoreboard players set #MWL AddedDetec 0
scoreboard players set #MWL AddedThief 0
scoreboard players set #MWL AddedCat 0

## Set Role
function mwj:system/setting/decision_role_addition/change_to_role_addition