###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Set AddedRole3
scoreboard players remove #MWL AddedRoleTmp 1
execute if score #MWL AddedRoleTmp matches 1.. run give @p[tag=Host] minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},Tag:"AddedRole3",HideFlags:39} 1
execute if score #MWL AddedRoleTmp matches 2.. run function mwj:system/setting/decision_role_addition_common/selected_role3