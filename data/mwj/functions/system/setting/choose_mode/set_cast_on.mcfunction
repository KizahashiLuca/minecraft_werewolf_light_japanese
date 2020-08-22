###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Count Players
scoreboard players set #MWL NumOfPlayers 0
execute as @a[gamemode=!spectator] run scoreboard players add #MWL NumOfPlayers 1
## Test
execute if entity @p[tag=MWLtest] run scoreboard players set #MWL NumOfPlayers 15

## Set dummy role
scoreboard players operation #MWL NumOfRoles = #MWL NumOfPlayers
execute if score #MWL SetDummyRole matches 1 run scoreboard players add #MWL NumOfRoles 1

## Set Role Number
function mwj:system/setting/initial_setting/set_role_number
function mwj:system/setting/initial_setting/set_added_role_number

## Detect the Number of Players is not Enough
execute if score #MWL NumOfRoles matches ..2 run scoreboard players set #MWL Phase 0

## Set Prev choice
scoreboard players set #MWL AddedRole 0
scoreboard players set #MWL PrevAddedRole 0

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