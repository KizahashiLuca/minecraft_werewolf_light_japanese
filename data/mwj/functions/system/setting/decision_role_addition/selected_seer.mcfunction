###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Set Seer
execute if score Time AddedRole matches 1.. run scoreboard players add Time AddedSeer 1
execute if score Time AddedRole matches 1.. run scoreboard players remove Time AddedRole 1
function mwj:system/setting/decision_role_addition/change_to_role_addition