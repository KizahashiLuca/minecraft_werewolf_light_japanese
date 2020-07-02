###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## If the Number is Short
execute if score Time PrevAddedRole matches 1.. if score Time AddedWolf matches 1.. run scoreboard players remove Time AddedWolf 1
scoreboard players remove Time PrevAddedRole 1
execute if score Time PrevAddedRole matches 1.. if score Time AddedMadman matches 1.. run scoreboard players remove Time AddedMadman 1
scoreboard players remove Time PrevAddedRole 1
execute if score Time PrevAddedRole matches 1.. if score Time AddedFox matches 1.. run scoreboard players remove Time AddedFox 1
scoreboard players remove Time PrevAddedRole 1
execute if score Time PrevAddedRole matches 1.. if score Time AddedVilla matches 1.. run scoreboard players remove Time AddedVilla 1
scoreboard players remove Time PrevAddedRole 1
execute if score Time PrevAddedRole matches 1.. if score Time AddedSeer matches 1.. run scoreboard players remove Time AddedSeer 1
scoreboard players remove Time PrevAddedRole 1
execute if score Time PrevAddedRole matches 1.. if score Time AddedMedium matches 1.. run scoreboard players remove Time AddedMedium 1
scoreboard players remove Time PrevAddedRole 1
execute if score Time PrevAddedRole matches 1.. if score Time AddedMason matches 1.. run scoreboard players remove Time AddedMason 1
scoreboard players remove Time PrevAddedRole 1
execute if score Time PrevAddedRole matches 1.. if score Time AddedDetec matches 1.. run scoreboard players remove Time AddedDetec 1
scoreboard players remove Time PrevAddedRole 1
execute if score Time PrevAddedRole matches 1.. if score Time AddedThief matches 1.. run scoreboard players remove Time AddedThief 1
scoreboard players remove Time PrevAddedRole 1
execute if score Time PrevAddedRole matches 1.. if score Time AddedCat matches 1.. run scoreboard players remove Time AddedCat 1
scoreboard players remove Time PrevAddedRole 1

execute if score Time PrevAddedRole matches 1.. run function mwj:system/preparation/preparation_added_role_minus