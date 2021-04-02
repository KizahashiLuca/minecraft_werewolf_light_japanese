###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Decrease added immoralist
scoreboard players remove #MWL AddedImmoral 1
scoreboard players remove #MWL PrevAddedRole 1

execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedFox matches 1 if score #MWL AddedImmoral matches 1.. run function mwj:system/ongame/settings/decrease_added_role/immoralist