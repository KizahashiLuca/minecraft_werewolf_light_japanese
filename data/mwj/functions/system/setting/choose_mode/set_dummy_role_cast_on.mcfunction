####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Choose set dummy role
execute if score #MWL PrevSetDummyRole matches 0 run scoreboard players set #MWL SetDummyRole 1
execute if score #MWL PrevSetDummyRole matches 1 run scoreboard players set #MWL SetDummyRole 0
scoreboard players operation #MWL PrevSetDummyRole = #MWL SetDummyRole

## Count Players
scoreboard players operation #MWL PrevAddedRole = #MWL NumOfRoles
scoreboard players set #MWL NumOfPlayers 0
execute as @a[gamemode=!spectator] run scoreboard players add #MWL NumOfPlayers 1
## Test
execute if entity @p[tag=MWLtest] run scoreboard players set #MWL NumOfPlayers 15

## Set dummy role
scoreboard players operation #MWL NumOfRoles = #MWL NumOfPlayers
execute if score #MWL SetDummyRole matches 1 run scoreboard players add #MWL NumOfRoles 1

## Detect the Number of Players is not Enough
execute if score #MWL NumOfRoles matches ..2 run scoreboard players set #MWL Phase 0

## Set Prev choice
scoreboard players operation #MWL PrevAddedRole -= #MWL NumOfRoles

execute if score #MWL SetDummyRole matches 0 if score #MWL PrevAddedRole matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/main

scoreboard players operation #MWL AddedRole -= #MWL PrevAddedRole
scoreboard players operation #MWL PrevAddedRole = #MWL AddedRole

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

## Send a Message Dummy Role to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
execute if score #MWL SetDummyRole matches 0 run tellraw @a ["",{"text":"  役欠けが、 ","color":"white"},{"text":"なし","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score #MWL SetDummyRole matches 0 run tellraw @a ["",{"text":"  現在参加者は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" です。","color":"white"}]
execute if score #MWL SetDummyRole matches 1 run tellraw @a ["",{"text":"  役欠けが、 ","color":"white"},{"text":"あり","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score #MWL SetDummyRole matches 1 run tellraw @a ["",{"text":"  現在参加者は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" で、役職数は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfRoles"},"color":"green","bold":true},{"text":"役","color":"green","bold":true},{"text":" です。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to