###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Detect the Number of Players is not Enough
execute if score #MWL NUM matches ..2 run scoreboard players set #MWL Phase 0

## Detect the Number of Players is increment/decrement
scoreboard players operation #MWL TempVariable = #MWL PrevAddedRole
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedRole
execute if score #MWL PrevAddedRole matches 1.. run scoreboard players operation #MWL TempVariable -= #MWL PrevAddedRole
execute if score #MWL PrevAddedRole matches 1.. run function mwj:system/preparation/preparation_added_role_minus

## Set Added Role Number
scoreboard players operation #MWL PrevAddedRole = #MWL TempVariable
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedWolf
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedMadman
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedFox
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedFox
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedVilla
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedSeer
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedMedium
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedMason
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedMason
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedDetec
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedThief
scoreboard players operation #MWL NumOfVillagers -= #MWL AddedCat

scoreboard players operation #MWL NumOfWolves += #MWL AddedWolf
scoreboard players operation #MWL NumOfMadmans += #MWL AddedMadman
scoreboard players operation #MWL NumOfFoxes = #MWL AddedFox
scoreboard players operation #MWL NumOfSeers += #MWL AddedFox
scoreboard players operation #MWL NumOfVillagers += #MWL AddedVilla
scoreboard players operation #MWL NumOfSeers += #MWL AddedSeer
scoreboard players operation #MWL NumOfMediums += #MWL AddedMedium
scoreboard players operation #MWL NumOfMasons = #MWL AddedMason
scoreboard players operation #MWL NumOfMasons += #MWL AddedMason
scoreboard players operation #MWL NumOfDetectives = #MWL AddedDetec
scoreboard players operation #MWL NumOfThieves = #MWL AddedThief
scoreboard players operation #MWL NumOfCats = #MWL AddedCat