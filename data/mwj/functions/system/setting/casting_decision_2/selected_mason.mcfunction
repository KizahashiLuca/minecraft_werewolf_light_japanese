###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Set Mason
execute if score #MWL AddedRole matches 2.. run scoreboard players add #MWL NumOfMasons 2
execute if score #MWL AddedRole matches 2.. run scoreboard players remove #MWL AddedRole 2
function mwj:system/setting/casting_decision_common/set_inventory