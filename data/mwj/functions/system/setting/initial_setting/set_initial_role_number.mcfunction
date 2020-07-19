###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Decision Role Breakdown of Wolf
scoreboard players operation #MWL NumOfWolves = #MWL NUM
scoreboard players add #MWL NumOfWolves 5
scoreboard players set #MWL TempVariable 5
scoreboard players operation #MWL NumOfWolves /= #MWL TempVariable
execute if score #MWL NumOfWolves matches ..-1 run scoreboard players set #MWL NumOfWolves 0

## Decision Role Breakdown of Madman
scoreboard players operation #MWL NumOfMadmans = #MWL NUM
scoreboard players remove #MWL NumOfMadmans 1
scoreboard players set #MWL TempVariable 6
scoreboard players operation #MWL NumOfMadmans /= #MWL TempVariable
execute if score #MWL NumOfMadmans matches ..-1 run scoreboard players set #MWL NumOfMadmans 0

## Decision Role Breakdown of Seer
scoreboard players operation #MWL NumOfSeers = #MWL NUM
scoreboard players add #MWL NumOfSeers 5
scoreboard players set #MWL TempVariable 10
scoreboard players operation #MWL NumOfSeers /= #MWL TempVariable
execute if score #MWL NumOfSeers matches ..-1 run scoreboard players set #MWL NumOfSeers 0

## Decision Role Breakdown of Medium
scoreboard players operation #MWL NumOfMediums = #MWL NUM
scoreboard players add #MWL NumOfMediums 4
scoreboard players set #MWL TempVariable 10
scoreboard players operation #MWL NumOfMediums /= #MWL TempVariable
execute if score #MWL NumOfMediums matches ..-1 run scoreboard players set #MWL NumOfMediums 0

## Decision Role Breakdown of Villager
scoreboard players operation #MWL NumOfVillagers = #MWL NUM
scoreboard players operation #MWL NumOfVillagers -= #MWL NumOfWolves
scoreboard players operation #MWL NumOfVillagers -= #MWL NumOfMadmans
scoreboard players operation #MWL NumOfVillagers -= #MWL NumOfSeers
scoreboard players operation #MWL NumOfVillagers -= #MWL NumOfMediums
execute if score #MWL NumOfVillagers matches ..-1 run scoreboard players set #MWL NumOfVillagers 0