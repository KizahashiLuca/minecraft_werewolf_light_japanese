####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Decision Role Breakdown of Wolf
scoreboard players operation #MWL NumOfWolves = #MWL NumOfRoles
scoreboard players add #MWL NumOfWolves 5
scoreboard players set #MWL TempVariable 5
scoreboard players operation #MWL NumOfWolves /= #MWL TempVariable
execute if score #MWL NumOfWolves matches ..-1 run scoreboard players set #MWL NumOfWolves 0

## Decision Role Breakdown of Madman
scoreboard players operation #MWL NumOfMadmans = #MWL NumOfRoles
scoreboard players remove #MWL NumOfMadmans 1
scoreboard players set #MWL TempVariable 6
scoreboard players operation #MWL NumOfMadmans /= #MWL TempVariable
execute if score #MWL NumOfMadmans matches ..-1 run scoreboard players set #MWL NumOfMadmans 0

## Decision Role Breakdown of Seer
scoreboard players operation #MWL NumOfSeers = #MWL NumOfRoles
scoreboard players add #MWL NumOfSeers 5
scoreboard players set #MWL TempVariable 10
scoreboard players operation #MWL NumOfSeers /= #MWL TempVariable
execute if score #MWL NumOfSeers matches ..-1 run scoreboard players set #MWL NumOfSeers 0

## Decision Role Breakdown of Medium
scoreboard players operation #MWL NumOfMediums = #MWL NumOfRoles
scoreboard players add #MWL NumOfMediums 4
scoreboard players set #MWL TempVariable 10
scoreboard players operation #MWL NumOfMediums /= #MWL TempVariable
execute if score #MWL NumOfMediums matches ..-1 run scoreboard players set #MWL NumOfMediums 0

## Decision Role Breakdown of Villager
scoreboard players operation #MWL NumOfVillagers = #MWL NumOfRoles
scoreboard players operation #MWL NumOfVillagers -= #MWL NumOfWolves
scoreboard players operation #MWL NumOfVillagers -= #MWL NumOfMadmans
scoreboard players operation #MWL NumOfVillagers -= #MWL NumOfSeers
scoreboard players operation #MWL NumOfVillagers -= #MWL NumOfMediums
execute if score #MWL NumOfVillagers matches ..-1 run scoreboard players set #MWL NumOfVillagers 0