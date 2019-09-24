###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Set Villager
scoreboard players remove Time AddedRoleTmp 1
execute if score Time AddedRoleTmp matches 1.. run give @a[tag=host] minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\"",Taged:"Villa"}} 1
execute if score Time AddedRoleTmp matches 2.. run function mwj:system/setting/decision_role_addition/added_villager