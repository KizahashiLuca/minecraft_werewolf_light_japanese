###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Set dummy role
scoreboard players set #MWL RandomCount 10
function mwj:system/ongame/settings/random_generator/randomizing
scoreboard players operation #MWL RandomAnswer %= #MWL DummyRoleNumber
scoreboard players add #MWL RandomAnswer 1
scoreboard players operation #MWL DummyRole = #MWL RandomAnswer

## Detect not added role
execute if score #MWL DummyRole matches 1 if score #MWL NumOfMadmans matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 2 if score #MWL NumOfFanatics matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 3 if score #MWL NumOfImmorals matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 4 if score #MWL NumOfVillagers matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 5 if score #MWL NumOfMasons matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 6 if score #MWL NumOfBakeries matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 7 if score #MWL NumOfSeers matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 8 if score #MWL NumOfFkSeers matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 9 if score #MWL NumOfSages matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 10 if score #MWL NumOfMediums matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 11 if score #MWL NumOfDetectives matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 12 if score #MWL NumOfThieves matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 13 if score #MWL NumOfLtReds matches 1.. run scoreboard players set #MWL DummyRoleFlag 1

execute if score #MWL DummyRoleFlag matches 0 run function mwj:system/ongame/settings/set_dummy_roles