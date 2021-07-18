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
function mwj:system/common/roles/set_role_number
function mwj:system/common/roles/set_added_role_number

## Detect the Number of Players is not Enough
execute if score #MWL NumOfRoles matches ..2 run scoreboard players set #MWL Phase 0

scoreboard players operation #MWL PrevAddedRole = #MWL AddedRole