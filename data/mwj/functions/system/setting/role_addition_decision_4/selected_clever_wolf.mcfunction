###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Set Clever Wolf
execute if score #MWL AddedRole matches 1.. run scoreboard players add #MWL AddedClWolf 1
execute if score #MWL AddedRole matches 1.. run scoreboard players remove #MWL AddedRole 1
function mwj:system/setting/role_addition_decision_common/set_inventory