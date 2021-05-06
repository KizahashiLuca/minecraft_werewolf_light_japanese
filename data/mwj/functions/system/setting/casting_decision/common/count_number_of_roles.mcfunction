####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Count number of roles
scoreboard players set #MWL NumOfWhite 0
scoreboard players operation #MWL NumOfWhite += #MWL NumOfVillagers
scoreboard players operation #MWL NumOfWhite += #MWL NumOfBakeries
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