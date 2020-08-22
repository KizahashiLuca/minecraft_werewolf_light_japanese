###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Detect the Number of Players is not Enough
execute if score #MWL NumOfRoles matches ..2 run scoreboard players set #MWL Phase 0

## Detect the Number of Players is increment/decrement
scoreboard players operation #MWL TempVariable = #MWL PrevAddedRole
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedRole
execute if score #MWL PrevAddedRole matches 1.. run scoreboard players operation #MWL TempVariable -= #MWL PrevAddedRole
execute if score #MWL PrevAddedRole matches 1.. run function mwj:system/preparation/decrease_added_role

## Set Added Role Number
scoreboard players operation #MWL PrevAddedRole = #MWL TempVariable
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedWolf
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedMadman
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedVilla
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedSeer
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedMedium
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedFox
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedFox
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedMason
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedMason
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedDetec
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedThief
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedCat
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedFkSeer
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedSage
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedWhWolf
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedFanatic
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedImmoral

scoreboard players operation #MWL NumOfWolves += #MWL AddedWolf
scoreboard players operation #MWL NumOfMadmans += #MWL AddedMadman
scoreboard players operation #MWL NumOfVillagers += #MWL AddedVilla
scoreboard players operation #MWL NumOfSeers += #MWL AddedSeer
scoreboard players operation #MWL NumOfMediums += #MWL AddedMedium
scoreboard players operation #MWL NumOfFoxes = #MWL AddedFox
scoreboard players operation #MWL NumOfSeers += #MWL AddedFox
scoreboard players operation #MWL NumOfMasons = #MWL AddedMason
scoreboard players operation #MWL NumOfMasons += #MWL AddedMason
scoreboard players operation #MWL NumOfDetectives = #MWL AddedDetec
scoreboard players operation #MWL NumOfThieves = #MWL AddedThief
scoreboard players operation #MWL NumOfCats = #MWL AddedCat
scoreboard players operation #MWL NumOfFkSeers = #MWL AddedFkSeer
scoreboard players operation #MWL NumOfSages = #MWL AddedSage
scoreboard players operation #MWL NumOfWhWolves = #MWL AddedWhWolf
scoreboard players operation #MWL NumOfFanatics = #MWL AddedFanatic
scoreboard players operation #MWL NumOfImmorals = #MWL AddedImmoral