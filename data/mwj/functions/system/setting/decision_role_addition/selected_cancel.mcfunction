###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Reset choice
scoreboard players operation #MWL AddedRole = #MWL PrevAddedVilla
scoreboard players operation #MWL AddedWolf = #MWL PrevAddedWolf
scoreboard players operation #MWL AddedMadman = #MWL PrevAddedMadman
scoreboard players operation #MWL AddedFox = #MWL PrevAddedFox
scoreboard players operation #MWL AddedVilla = #MWL PrevAddedVilla
scoreboard players operation #MWL AddedSeer = #MWL PrevAddedSeer
scoreboard players operation #MWL AddedMedium = #MWL PrevAddedMedium
scoreboard players operation #MWL AddedMason = #MWL PrevAddedMason
scoreboard players operation #MWL AddedDetec = #MWL PrevAddedDetec
scoreboard players operation #MWL AddedThief = #MWL PrevAddedThief
scoreboard players operation #MWL AddedCat = #MWL PrevAddedCat

## Set Role
function mwj:system/setting/decision_role_addition/selected_set