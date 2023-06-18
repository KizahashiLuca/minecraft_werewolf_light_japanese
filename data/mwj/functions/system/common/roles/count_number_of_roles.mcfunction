####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Count number of roles
scoreboard players set #MWL NumOfWhite 0
scoreboard players operation #MWL NumOfWhite += #MWL NumOfVillagers
scoreboard players operation #MWL NumOfWhite += #MWL NumOfBakeries
scoreboard players operation #MWL NumOfWhite += #MWL NumOfLycants
scoreboard players operation #MWL NumOfWhite += #MWL NumOfMasons
scoreboard players operation #MWL NumOfWhite += #MWL NumOfSeers
scoreboard players operation #MWL NumOfWhite += #MWL NumOfFkSeers
scoreboard players operation #MWL NumOfWhite += #MWL NumOfSages
scoreboard players operation #MWL NumOfWhite += #MWL NumOfMediums
scoreboard players operation #MWL NumOfWhite += #MWL NumOfDetectives
scoreboard players operation #MWL NumOfWhite += #MWL NumOfThieves
scoreboard players operation #MWL NumOfWhite += #MWL NumOfLtReds
scoreboard players operation #MWL NumOfWhite += #MWL NumOfCats

scoreboard players set #MWL NumOfBlack 0
scoreboard players operation #MWL NumOfBlack += #MWL NumOfWolves
scoreboard players operation #MWL NumOfBlack += #MWL NumOfClWolves
scoreboard players operation #MWL NumOfBlack += #MWL NumOfWhWolves

## Calculate number of rest roles
scoreboard players operation #MWL NumOfRestRoles = #MWL NumOfRoles
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfWolves
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfClWolves
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfWhWolves
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfMadmans
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfFanatics
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfFoxes
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfImmorals
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfVillagers
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfBakeries
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfLycants
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfMasons
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfSeers
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfFkSeers
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfSages
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfMediums
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfDetectives
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfThieves
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfLtReds
scoreboard players operation #MWL NumOfRestRoles -= #MWL NumOfCats