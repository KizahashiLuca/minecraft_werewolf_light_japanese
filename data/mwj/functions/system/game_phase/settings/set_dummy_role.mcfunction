####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set dummy role
scoreboard players set #MWL RandomCount 10
function mwj:system/game_phase/settings/random_generator/randomizing
scoreboard players operation #MWL RandomAnswer %= #MWL DummyRoleNumber
scoreboard players add #MWL RandomAnswer 1
scoreboard players operation #MWL SetDummyRole = #MWL RandomAnswer

## Detect dummy flag
execute if score #MWL SetDummyRole matches 1 if score #MWL NumOfMadmans matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL SetDummyRole matches 2 if score #MWL NumOfFanatics matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL SetDummyRole matches 3 if score #MWL NumOfImmorals matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL SetDummyRole matches 4 if score #MWL NumOfVillagers matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL SetDummyRole matches 5 if score #MWL NumOfBakeries matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL SetDummyRole matches 6 if score #MWL NumOfLycants matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL SetDummyRole matches 7 if score #MWL NumOfMasons matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL SetDummyRole matches 8 if score #MWL NumOfSeers matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL SetDummyRole matches 9 if score #MWL NumOfFkSeers matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL SetDummyRole matches 10 if score #MWL NumOfSages matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL SetDummyRole matches 11 if score #MWL NumOfMediums matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL SetDummyRole matches 12 if score #MWL NumOfDetectives matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL SetDummyRole matches 13 if score #MWL NumOfThieves matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL SetDummyRole matches 14 if score #MWL NumOfLtReds matches 1.. run scoreboard players set #MWL DummyRoleFlag 1

execute if score #MWL DummyRoleFlag matches 0 run function mwj:system/game_phase/settings/set_dummy_role