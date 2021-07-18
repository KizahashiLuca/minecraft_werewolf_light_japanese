####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## RE-Count Players
scoreboard players set #MWL NumOfPlayers 0
function mwj:system/ongame/settings/count_players
scoreboard players operation #MWL NumOfRoles = #MWL NumOfPlayers
execute if score #MWL DummyRoleMode matches 1 run scoreboard players add #MWL NumOfRoles 1

## Revoke advancements
function mwj:system/finish/revoke_advancements

## Recount the Number of Roles
execute if score #MWL CastMode matches 0 run function mwj:system/common/roles/set_role_number
execute if score #MWL CastMode matches 0 run function mwj:system/common/roles/set_added_role_number
execute if score #MWL CastMode matches 0 run function mwj:system/ongame/settings/reset_added_role
execute if score #MWL CastMode matches 1 run scoreboard players operation #MWL TempVariable = #MWL PrevAddedRole
execute if score #MWL CastMode matches 1 run scoreboard players operation #MWL PrevAddedRole -= #MWL NumOfRoles
execute if score #MWL CastMode matches 1 if score #MWL PrevAddedRole matches ..-1 run scoreboard players operation #MWL NumOfVillagers -= #MWL PrevAddedRole
execute if score #MWL CastMode matches 1 if score #MWL PrevAddedRole matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/main

execute if score #MWL CastMode matches 1 run scoreboard players operation #MWL PrevAddedRole = #MWL NumOfRoles
execute if score #MWL CastMode matches 1 run scoreboard players operation #MWL AddedMason = #MWL NumOfMasons
execute if score #MWL CastMode matches 1 run scoreboard players set #MWL TempVariable 2
execute if score #MWL CastMode matches 1 run scoreboard players operation #MWL AddedMason /= #MWL TempVariable

## Set messages
function mwj:system/common/message/change_to

## Reset Scoreboard
scoreboard players set #MWL Tick 0
scoreboard players operation #MWL Second = #MWL HideTime
scoreboard players set #MWL Phase 10

## Set bossbar
bossbar set minecraft:bossbar name [{"text":"潜伏時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]
scoreboard players set #MWL BossbarMax 20
scoreboard players operation #MWL BossbarMax *= #MWL HideTime
scoreboard players set #MWL BossbarVal 20
scoreboard players operation #MWL BossbarVal *= #MWL Second
execute store result bossbar minecraft:bossbar max run scoreboard players get #MWL BossbarMax
execute store result bossbar minecraft:bossbar value run scoreboard players get #MWL BossbarVal

## Set bossbar style
bossbar set minecraft:bossbar style notched_10
bossbar set minecraft:bossbar color green