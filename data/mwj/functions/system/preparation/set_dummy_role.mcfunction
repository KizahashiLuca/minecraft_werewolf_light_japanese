###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Set dummy role
function mwj:system/preparation/random_generator/randomizing
scoreboard players operation #MWL RandomAnswer %= #MWL 11
scoreboard players add #MWL RandomAnswer 1
scoreboard players operation #MWL DummyRole = #MWL RandomAnswer

## Detect not added role
execute if score #MWL DummyRole matches 1 if score #MWL NumOfMadmans matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 2 if score #MWL NumOfVillagers matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 3 if score #MWL NumOfSeers matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 4 if score #MWL NumOfMediums matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 5 if score #MWL NumOfMasons matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 6 if score #MWL NumOfDetectives matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 7 if score #MWL NumOfThieves matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 8 if score #MWL NumOfFkSeers matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 9 if score #MWL NumOfSages matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 10 if score #MWL NumOfFanatics matches 1.. run scoreboard players set #MWL DummyRoleFlag 1
execute if score #MWL DummyRole matches 11 if score #MWL NumOfImmorals matches 1.. run scoreboard players set #MWL DummyRoleFlag 1

execute if score #MWL DummyRoleFlag matches 0 run function mwj:system/preparation/set_dummy_role