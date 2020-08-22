###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Added Role Number
scoreboard players operation #MWL AddedRole = #MWL NumOfVillagers
scoreboard players remove #MWL AddedRole 1
scoreboard players set #MWL TempVariable 2
scoreboard players operation #MWL AddedRole /= #MWL TempVariable
execute if score #MWL NumOfRoles matches ..7 run scoreboard players set #MWL AddedRole 0
execute if score #MWL AddedRole matches ..-1 run scoreboard players set #MWL AddedRole 0

scoreboard players operation #MWL AddedRoleNumber = #MWL AddedRole