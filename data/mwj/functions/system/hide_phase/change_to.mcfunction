####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Revoke advancements
function mwj:system/finish/revoke_advancements

## Recount players
function mwj:system/common/roles/recount_roles/main

## Recount number of roles
function mwj:system/common/roles/count_number_of_roles

## Recount the Number of Roles
scoreboard players operation #MWL NumOfMasonPair = #MWL NumOfMasons
scoreboard players set #MWL TempVariable 2
scoreboard players operation #MWL NumOfMasonPair /= #MWL TempVariable

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