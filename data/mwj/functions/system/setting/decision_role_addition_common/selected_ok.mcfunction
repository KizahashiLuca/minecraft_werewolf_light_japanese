###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Calculate Rest Number of Add Roles
scoreboard players operation #MWL PrevAddedRole = #MWL AddedRole

## Set Prev choice
scoreboard players operation #MWL PrevAddedWolf = #MWL AddedWolf
scoreboard players operation #MWL PrevAddedMadman = #MWL AddedMadman
scoreboard players operation #MWL PrevAddedVilla = #MWL AddedVilla
scoreboard players operation #MWL PrevAddedSeer = #MWL AddedSeer
scoreboard players operation #MWL PrevAddedMedium = #MWL AddedMedium

scoreboard players operation #MWL PrevAddedFox = #MWL AddedFox
scoreboard players operation #MWL PrevAddedMason = #MWL AddedMason
scoreboard players operation #MWL PrevAddedDetec = #MWL AddedDetec
scoreboard players operation #MWL PrevAddedThief = #MWL AddedThief
scoreboard players operation #MWL PrevAddedCat = #MWL AddedCat

# scoreboard players operation #MWL PrevAddedFkSeer = #MWL AddedFkSeer
# scoreboard players operation #MWL PrevAdded = #MWL Added
# scoreboard players operation #MWL PrevAdded = #MWL Added
# scoreboard players operation #MWL PrevAdded = #MWL Added
# scoreboard players operation #MWL PrevAdded = #MWL Added

## Set inventory
function mwj:system/setting/decision_role_addition_common/selected_set