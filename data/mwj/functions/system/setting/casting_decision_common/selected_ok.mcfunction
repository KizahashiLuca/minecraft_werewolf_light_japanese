####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Calculate Rest Number of Add Roles
scoreboard players operation #MWL PrevAddedRole = #MWL AddedRole

## Set Prev choice
scoreboard players operation #MWL PNumOfWolves = #MWL NumOfWolves
scoreboard players operation #MWL PNumOfMadmans = #MWL NumOfMadmans
scoreboard players operation #MWL PNumOfVillagers = #MWL NumOfVillagers
scoreboard players operation #MWL PNumOfSeers = #MWL NumOfSeers
scoreboard players operation #MWL PNumOfMediums = #MWL NumOfMediums

scoreboard players operation #MWL PNumOfFoxes = #MWL NumOfFoxes
scoreboard players operation #MWL PNumOfMasons = #MWL NumOfMasons
scoreboard players operation #MWL PNumOfDetectives = #MWL NumOfDetectives
scoreboard players operation #MWL PNumOfThieves = #MWL NumOfThieves
scoreboard players operation #MWL PNumOfCats = #MWL NumOfCats

scoreboard players operation #MWL PNumOfFkSeers = #MWL NumOfFkSeers
scoreboard players operation #MWL PNumOfSages = #MWL NumOfSages
scoreboard players operation #MWL PNumOfWhWolves = #MWL NumOfWhWolves
scoreboard players operation #MWL PNumOfFanatics = #MWL NumOfFanatics
scoreboard players operation #MWL PNumOfImmorals = #MWL NumOfImmorals

scoreboard players operation #MWL PNumOfLtReds = #MWL NumOfLtReds
scoreboard players operation #MWL PNumOfClWolves = #MWL NumOfClWolves
scoreboard players operation #MWL PNumOfBakeries = #MWL NumOfBakeries
# scoreboard players operation #MWL PNumOf = #MWL NumOf
# scoreboard players operation #MWL PNumOf = #MWL NumOf

## Set inventory
function mwj:system/setting/casting_decision_common/selected_set