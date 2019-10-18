###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## If the Number is Short
execute if score Time PrevAddedRole matches 1.. if score Time AddedFox matches 1.. run scoreboard players remove Time AddedFox 1
scoreboard players remove Time PrevAddedRole 1
execute if score Time PrevAddedRole matches 1.. if score Time AddedMason matches 1.. run scoreboard players remove Time AddedMason 1
scoreboard players remove Time PrevAddedRole 1
execute if score Time PrevAddedRole matches 1.. if score Time AddedDetec matches 1.. run scoreboard players remove Time AddedDetec 1
scoreboard players remove Time PrevAddedRole 1
execute if score Time PrevAddedRole matches 1.. if score Time AddedCat matches 1.. run scoreboard players remove Time AddedCat 1
scoreboard players remove Time PrevAddedRole 1

execute if score Time PrevAddedRole matches 1.. run function mwj:system/preparation/preparation_added_role_minus