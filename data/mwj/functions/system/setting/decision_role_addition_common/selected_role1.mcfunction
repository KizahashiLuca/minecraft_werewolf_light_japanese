###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Set AddedRole1
scoreboard players remove #MWL AddedRoleTmp 1
execute if score #MWL AddedRoleTmp matches 1.. run give @p[tag=Host] minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},Tag:"AddedRole1",HideFlags:39} 1
execute if score #MWL AddedRoleTmp matches 2.. run function mwj:system/setting/decision_role_addition_common/selected_role1