###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Set Mason
execute if score #MWL AddedRole matches 1.. run scoreboard players add #MWL AddedMason 1
execute if score #MWL AddedRole matches 1.. run scoreboard players remove #MWL AddedRole 1
function mwj:system/setting/decision_role_addition_common/set_scoreboard