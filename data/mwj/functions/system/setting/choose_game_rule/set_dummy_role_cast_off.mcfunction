####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Count Players
scoreboard players set #MWL NumOfPlayers 0
execute as @a[gamemode=!spectator] run scoreboard players add #MWL NumOfPlayers 1
## Test
execute if entity @p[tag=MWLtest] run scoreboard players set #MWL NumOfPlayers 15

## Set dummy role
scoreboard players operation #MWL NumOfRoles = #MWL NumOfPlayers
execute if score #MWL DummyRoleMode matches 1 run scoreboard players add #MWL NumOfRoles 1

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
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedClWolf
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedWhWolf
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedMadman
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedFanatic

scoreboard players operation #MWL PrevAddedRole -= #MWL AddedFox
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedImmoral
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedVilla
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedBakery
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedLycant

scoreboard players operation #MWL PrevAddedRole -= #MWL AddedMason
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedSeer
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedFkSeer
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedSage
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedMedium

scoreboard players operation #MWL PrevAddedRole -= #MWL AddedDetec
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedThief
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedLtRed
scoreboard players operation #MWL PrevAddedRole -= #MWL AddedCat

scoreboard players operation #MWL AddedRole = #MWL PrevAddedRole

## Set Prev choice
function mwj:system/common/roles/set_prev_roles