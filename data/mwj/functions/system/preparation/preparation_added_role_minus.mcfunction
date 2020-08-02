###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## If the Number is Short
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedWolf matches 1.. run scoreboard players remove #MWL AddedWolf 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedMadman matches 1.. run scoreboard players remove #MWL AddedMadman 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedVilla matches 1.. run scoreboard players remove #MWL AddedVilla 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedSeer matches 1.. run scoreboard players remove #MWL AddedSeer 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedMedium matches 1.. run scoreboard players remove #MWL AddedMedium 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedFox matches 1.. run scoreboard players remove #MWL AddedFox 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedMason matches 1.. run scoreboard players remove #MWL AddedMason 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedDetec matches 1.. run scoreboard players remove #MWL AddedDetec 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedThief matches 1.. run scoreboard players remove #MWL AddedThief 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedCat matches 1.. run scoreboard players remove #MWL AddedCat 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedFkSeer matches 1.. run scoreboard players remove #MWL AddedFkSeer 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedSage matches 1.. run scoreboard players remove #MWL AddedSage 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedWhWolf matches 1.. run scoreboard players remove #MWL AddedWhWolf 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedFanatic matches 1.. run scoreboard players remove #MWL AddedFanatic 1
scoreboard players remove #MWL PrevAddedRole 1
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedImmoral matches 1.. run scoreboard players remove #MWL AddedImmoral 1
scoreboard players remove #MWL PrevAddedRole 1

execute if score #MWL PrevAddedRole matches 1.. run function mwj:system/preparation/preparation_added_role_minus