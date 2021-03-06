###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Count number of roles
scoreboard players set #MWL NumOfWhite 0
scoreboard players operation #MWL NumOfWhite += #MWL NumOfVillagers
scoreboard players operation #MWL NumOfWhite += #MWL NumOfSeers
scoreboard players operation #MWL NumOfWhite += #MWL NumOfMediums
scoreboard players operation #MWL NumOfWhite += #MWL NumOfMasons
scoreboard players operation #MWL NumOfWhite += #MWL NumOfDetectives
scoreboard players operation #MWL NumOfWhite += #MWL NumOfThieves
scoreboard players operation #MWL NumOfWhite += #MWL NumOfCats
scoreboard players operation #MWL NumOfWhite += #MWL NumOfFkSeers
scoreboard players operation #MWL NumOfWhite += #MWL NumOfSages
scoreboard players operation #MWL NumOfWhite += #MWL NumOfLtReds

scoreboard players set #MWL NumOfBlack 0
scoreboard players operation #MWL NumOfBlack += #MWL NumOfWolves
scoreboard players operation #MWL NumOfBlack += #MWL NumOfWhWolves
scoreboard players operation #MWL NumOfBlack += #MWL NumOfClWolves