###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Add Fox
scoreboard players remove Time AddedRoleTmp 1
execute if score Time AddedRoleTmp matches 1.. run give @p[tag=Host] minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\"",Taged:"Fox"}} 1
execute if score Time AddedRoleTmp matches 2.. run function mwj:system/setting/decision_role_addition/added_fox