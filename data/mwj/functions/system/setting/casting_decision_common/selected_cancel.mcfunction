####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Reset choice
scoreboard players operation #MWL AddedRole = #MWL PrevAddedRole

scoreboard players operation #MWL NumOfWolves = #MWL PNumOfWolves
scoreboard players operation #MWL NumOfMadmans = #MWL PNumOfMadmans
scoreboard players operation #MWL NumOfVillagers = #MWL PNumOfVillagers
scoreboard players operation #MWL NumOfSeers = #MWL PNumOfSeers
scoreboard players operation #MWL NumOfMediums = #MWL PNumOfMediums

scoreboard players operation #MWL NumOfFoxes = #MWL PNumOfFoxes
scoreboard players operation #MWL NumOfMasons = #MWL PNumOfMasons
scoreboard players operation #MWL NumOfDetectives = #MWL PNumOfDetectives
scoreboard players operation #MWL NumOfThieves = #MWL PNumOfThieves
scoreboard players operation #MWL NumOfCats = #MWL PNumOfCats

scoreboard players operation #MWL NumOfFkSeers = #MWL PNumOfFkSeers
scoreboard players operation #MWL NumOfSages = #MWL PNumOfSages
scoreboard players operation #MWL NumOfWhWolves = #MWL PNumOfWhWolves
scoreboard players operation #MWL NumOfFanatics = #MWL PNumOfFanatics
scoreboard players operation #MWL NumOfImmorals = #MWL PNumOfImmorals

scoreboard players operation #MWL NumOfLtReds = #MWL PNumOfLtReds
scoreboard players operation #MWL NumOfClWolves = #MWL PNumOfClWolves
scoreboard players operation #MWL NumOfBakeries = #MWL PNumOfBakeries
# scoreboard players operation #MWL NumOf = #MWL PNumOf
# scoreboard players operation #MWL NumOf = #MWL PNumOf

## Set item addition
function mwj:system/setting/casting_decision_common/selected_set