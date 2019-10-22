###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Reset choice
scoreboard players operation Time AddedRole = Time PrevAddedRole
scoreboard players set Time AddedVilla 0
scoreboard players set Time AddedFox 0
scoreboard players set Time AddedMason 0
scoreboard players set Time AddedDetec 0
scoreboard players set Time AddedCat 0

## Set Role
function mwj:system/setting/decision_role_addition/change_to_role_addition