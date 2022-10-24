####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Decision Role Breakdown of Wolf
scoreboard players operation #MWL NumOfWolves = #MWL NumOfRoles
scoreboard players add #MWL NumOfWolves 5
scoreboard players operation #MWL NumOfWolves /= #MWL Num00005
execute if predicate mwj:system/common/roles/shortage_wolf run scoreboard players set #MWL NumOfWolves 0

## Decision Role Breakdown of Madman
scoreboard players operation #MWL NumOfMadmans = #MWL NumOfRoles
scoreboard players remove #MWL NumOfMadmans 1
scoreboard players operation #MWL NumOfMadmans /= #MWL Num00006
execute if predicate mwj:system/common/roles/shortage_madman run scoreboard players set #MWL NumOfMadmans 0

## Decision Role Breakdown of Seer
scoreboard players operation #MWL NumOfSeers = #MWL NumOfRoles
scoreboard players add #MWL NumOfSeers 5
scoreboard players operation #MWL NumOfSeers /= #MWL Num00010
execute if predicate mwj:system/common/roles/shortage_seer run scoreboard players set #MWL NumOfSeers 0

## Decision Role Breakdown of Medium
scoreboard players operation #MWL NumOfMediums = #MWL NumOfRoles
scoreboard players add #MWL NumOfMediums 4
scoreboard players operation #MWL NumOfMediums /= #MWL Num00010
execute if predicate mwj:system/common/roles/shortage_medium run scoreboard players set #MWL NumOfMediums 0

## Decision Role Breakdown of Villager
scoreboard players operation #MWL NumOfVillagers = #MWL NumOfRoles
scoreboard players operation #MWL NumOfVillagers -= #MWL NumOfWolves
scoreboard players operation #MWL NumOfVillagers -= #MWL NumOfMadmans
scoreboard players operation #MWL NumOfVillagers -= #MWL NumOfSeers
scoreboard players operation #MWL NumOfVillagers -= #MWL NumOfMediums
execute if predicate mwj:system/common/roles/shortage_villager run scoreboard players set #MWL NumOfVillagers 0