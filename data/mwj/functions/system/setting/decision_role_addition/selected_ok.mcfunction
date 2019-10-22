###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Calculate Rest Number of Add Roles
execute if score Time AddedRole matches 1.. run scoreboard players operation Time AddedVilla += Time AddedRole

## Set Prev choice
scoreboard players set Time AddedRole 0
scoreboard players operation Time PrevAddedFox = Time AddedFox
scoreboard players operation Time PrevAddedVilla = Time AddedVilla
scoreboard players operation Time PrevAddedMason = Time AddedMason
scoreboard players operation Time PrevAddedDetec = Time AddedDetec
scoreboard players operation Time PrevAddedCat = Time AddedCat

## Set Role
function mwj:system/setting/decision_role_addition/selected_set