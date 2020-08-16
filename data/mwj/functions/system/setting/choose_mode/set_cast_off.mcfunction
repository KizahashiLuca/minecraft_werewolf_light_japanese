###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 Aug 2020
## Version: v.1.4
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

scoreboard players operation #MWL PrevAddedRole = #MWL AddedRole