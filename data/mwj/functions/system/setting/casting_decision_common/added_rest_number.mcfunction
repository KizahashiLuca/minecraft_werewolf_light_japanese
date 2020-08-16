###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 Aug 2020
## Version: v.1.4
###############################

## Add Villager
scoreboard players remove #MWL AddedRoleTmp 1
execute if score #MWL AddedRoleTmp matches 1.. run loot give @p[tag=Host] loot mwj:setting/role_addition/nether_star_rest
execute if score #MWL AddedRoleTmp matches 2.. run function mwj:system/setting/casting_decision_common/added_rest_number