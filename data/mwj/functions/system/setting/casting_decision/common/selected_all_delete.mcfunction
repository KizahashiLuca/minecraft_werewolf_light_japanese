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
scoreboard players operation #MWL AddedRole = #MWL NumOfRoles
scoreboard players set #MWL NumOfWolves 0
scoreboard players set #MWL NumOfClWolves 0
scoreboard players set #MWL NumOfWhWolves 0
scoreboard players set #MWL NumOfMadmans 0
scoreboard players set #MWL NumOfFanatics 0

scoreboard players set #MWL NumOfFoxes 0
scoreboard players set #MWL NumOfImmorals 0
scoreboard players set #MWL NumOfVillagers 0
scoreboard players set #MWL NumOfBakeries 0
scoreboard players set #MWL NumOfLycants 0

scoreboard players set #MWL NumOfMasons 0
scoreboard players set #MWL NumOfSeers 0
scoreboard players set #MWL NumOfFkSeers 0
scoreboard players set #MWL NumOfSages 0
scoreboard players set #MWL NumOfMediums 0

scoreboard players set #MWL NumOfDetectives 0
scoreboard players set #MWL NumOfThieves 0
scoreboard players set #MWL NumOfLtReds 0
scoreboard players set #MWL NumOfCats 0
# scoreboard players set #MWL NumOf 0

## Set Item Addition
execute if score #MWL Phase matches 95 run function mwj:system/setting/casting_decision/page_1/set_added
execute if score #MWL Phase matches 96 run function mwj:system/setting/casting_decision/page_2/set_added
execute if score #MWL Phase matches 97 run function mwj:system/setting/casting_decision/page_3/set_added
execute if score #MWL Phase matches 98 run function mwj:system/setting/casting_decision/page_4/set_added
function mwj:system/setting/casting_decision/common/set_inventory