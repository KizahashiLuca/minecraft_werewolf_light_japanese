###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Reset choice
scoreboard players operation #MWL AddedRole = #MWL PrevAddedRole

scoreboard players operation #MWL AddedWolf = #MWL PrevAddedWolf
scoreboard players operation #MWL AddedMadman = #MWL PrevAddedMadman
scoreboard players operation #MWL AddedVilla = #MWL PrevAddedVilla
scoreboard players operation #MWL AddedSeer = #MWL PrevAddedSeer
scoreboard players operation #MWL AddedMedium = #MWL PrevAddedMedium

scoreboard players operation #MWL AddedFox = #MWL PrevAddedFox
scoreboard players operation #MWL AddedMason = #MWL PrevAddedMason
scoreboard players operation #MWL AddedDetec = #MWL PrevAddedDetec
scoreboard players operation #MWL AddedThief = #MWL PrevAddedThief
scoreboard players operation #MWL AddedCat = #MWL PrevAddedCat

scoreboard players operation #MWL AddedFkSeer = #MWL PrevAddedFkSeer
# scoreboard players operation #MWL Added = #MWL PrevAdded
# scoreboard players operation #MWL Added = #MWL PrevAdded
# scoreboard players operation #MWL Added = #MWL PrevAdded
# scoreboard players operation #MWL Added = #MWL PrevAdded

## Set item addition
function mwj:system/setting/decision_role_addition_common/selected_set