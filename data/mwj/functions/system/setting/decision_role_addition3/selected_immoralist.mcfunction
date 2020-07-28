###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Set Immoralist
execute if score #MWL AddedFox matches 1.. if score #MWL AddedRole matches 1.. run function mwj:system/setting/decision_role_addition3/immoralist/already_fox_set

execute if score #MWL AddedFox matches ..0 if score #MWL AddedRole matches 2.. run function mwj:system/setting/decision_role_addition3/immoralist/not_yet_fox_set

function mwj:system/setting/decision_role_addition_common/set_scoreboard