####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
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
scoreboard players set #MWL NumOfPlayers 0
execute as @a[gamemode=!spectator] run scoreboard players add #MWL NumOfPlayers 1
## Test
execute if entity @p[tag=MWLtest] run scoreboard players set #MWL NumOfPlayers 15

## Set dummy role
scoreboard players operation #MWL NumOfRoles = #MWL NumOfPlayers
execute if score #MWL SetDummyRole matches 1 run scoreboard players add #MWL NumOfRoles 1

## Set Role Number
scoreboard players operation #MWL PrevAddedRole = #MWL AddedRoleNumber
function mwj:system/common/roles/set_role_number
function mwj:system/common/roles/set_added_role_number

## Detect the Number of Players is not Enough
execute if score #MWL NumOfRoles matches ..2 run scoreboard players set #MWL Phase 0

## Detect the Number of Players is increment/decrement
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedRoleNumber
execute if score #MWL PrevAddedRole matches 1.. run function mwj:system/ongame/settings/decrease_added_role/main

## Calculate Prev choice
scoreboard players operation #MWL PrevAddedRole = #MWL AddedRoleNumber

scoreboard players operation #MWL PrevAddedRole -= #MWL AddedWolf
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedMadman
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedVilla
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedSeer
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedMedium

scoreboard players operation #MWL PrevAddedRole -= #MWL AddedFox
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedMason
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedDetec
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedThief
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedCat

scoreboard players operation #MWL PrevAddedRole -= #MWL AddedFkSeer
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedSage
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedWhWolf
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedFanatic
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedImmoral
scoreboard players operation #MWL AddedRole = #MWL PrevAddedRole

## Set Prev choice
scoreboard players operation #MWL PrevAddedWolf = #MWL AddedWolf
scoreboard players operation #MWL PrevAddedMadman = #MWL AddedMadman
scoreboard players operation #MWL PrevAddedVilla = #MWL AddedVilla
scoreboard players operation #MWL PrevAddedSeer = #MWL AddedSeer
scoreboard players operation #MWL PrevAddedMedium = #MWL AddedMedium

scoreboard players operation #MWL PrevAddedFox = #MWL AddedFox
scoreboard players operation #MWL PrevAddedMason = #MWL AddedMason
scoreboard players operation #MWL PrevAddedDetec = #MWL AddedDetec
scoreboard players operation #MWL PrevAddedThief = #MWL AddedThief
scoreboard players operation #MWL PrevAddedCat = #MWL AddedCat

scoreboard players operation #MWL PrevAddedFkSeer = #MWL AddedFkSeer
scoreboard players operation #MWL PrevAddedSage = #MWL AddedSage
scoreboard players operation #MWL PrevAddedWhWolf = #MWL AddedWhWolf
scoreboard players operation #MWL PrevAddedFanatic = #MWL AddedFanatic
scoreboard players operation #MWL PrevAddedImmoral = #MWL AddedImmoral

## Send a Message Dummy Role to All Players
tellraw @a [""]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
execute if score #MWL SetDummyRole matches 0 run tellraw @a ["",{"text":"  役欠けが、 ","color":"white"},{"text":"なし","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score #MWL SetDummyRole matches 0 run tellraw @a ["",{"text":"  現在参加者は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" です。","color":"white"}]
execute if score #MWL SetDummyRole matches 1 run tellraw @a ["",{"text":"  役欠けが、 ","color":"white"},{"text":"あり","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score #MWL SetDummyRole matches 1 run tellraw @a ["",{"text":"  現在参加者は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" で、役職数は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfRoles"},"color":"green","bold":true},{"text":"役","color":"green","bold":true},{"text":" です。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a [""]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to