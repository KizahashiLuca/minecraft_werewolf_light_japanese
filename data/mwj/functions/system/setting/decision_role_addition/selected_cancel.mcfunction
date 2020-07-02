###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Reset choice
scoreboard players operation Time AddedRole = Time PrevAddedVilla
scoreboard players operation Time AddedWolf = Time PrevAddedWolf
scoreboard players operation Time AddedMadman = Time PrevAddedMadman
scoreboard players operation Time AddedFox = Time PrevAddedFox
scoreboard players operation Time AddedVilla = Time PrevAddedVilla
scoreboard players operation Time AddedSeer = Time PrevAddedSeer
scoreboard players operation Time AddedMedium = Time PrevAddedMedium
scoreboard players operation Time AddedMason = Time PrevAddedMason
scoreboard players operation Time AddedDetec = Time PrevAddedDetec
scoreboard players operation Time AddedThief = Time PrevAddedThief
scoreboard players operation Time AddedCat = Time PrevAddedCat

## Set Role
function mwj:system/setting/decision_role_addition/selected_set