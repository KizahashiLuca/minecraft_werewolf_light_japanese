###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Reset choice
scoreboard players operation #MWL AddedRole = #MWL NumOfRoles
scoreboard players set #MWL NumOfWolves 0
scoreboard players set #MWL NumOfMadmans 0
scoreboard players set #MWL NumOfVillagers 0
scoreboard players set #MWL NumOfSeers 0
scoreboard players set #MWL NumOfMediums 0

scoreboard players set #MWL NumOfFoxes 0
scoreboard players set #MWL NumOfMasons 0
scoreboard players set #MWL NumOfDetectives 0
scoreboard players set #MWL NumOfThieves 0
scoreboard players set #MWL NumOfCats 0

scoreboard players set #MWL NumOfFkSeers 0
scoreboard players set #MWL NumOfSages 0
scoreboard players set #MWL NumOfWhWolves 0
scoreboard players set #MWL NumOfFanatics 0
scoreboard players set #MWL NumOfImmorals 0

scoreboard players set #MWL NumOfLtReds 0
scoreboard players set #MWL NumOfClWolves 0
scoreboard players set #MWL NumOfBakeries 0
# scoreboard players set #MWL NumOf 0
# scoreboard players set #MWL NumOf 0

## Set Item Addition
execute if score #MWL Phase matches 95 run function mwj:system/setting/casting_decision_1/set_added
execute if score #MWL Phase matches 96 run function mwj:system/setting/casting_decision_2/set_added
execute if score #MWL Phase matches 97 run function mwj:system/setting/casting_decision_3/set_added
execute if score #MWL Phase matches 98 run function mwj:system/setting/casting_decision_4/set_added
function mwj:system/setting/casting_decision_common/set_inventory