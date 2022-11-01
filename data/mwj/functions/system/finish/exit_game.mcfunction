####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Common Message
function mwj:system/common/message/end

## teleport to alive players
execute if entity @p[predicate=mwj:gamemode/adventure] run tp @a[predicate=mwj:player/the_dead] @p[predicate=mwj:gamemode/adventure,sort=random]

## Remove storages
function mwj:system/finish/remove_storages

## Reset world
function mwj:system/finish/reset_world

## Remove scoreboards
function mwj:system/finish/remove_scoreboards

## Remove bossbars
function mwj:system/finish/remove_bossbars

## Remove entities
function mwj:system/finish/remove_entities

## Remove tags
tag @a remove Host
function mwj:system/finish/remove_tags

## Remove teams
function mwj:system/finish/remove_teams

## Revoke advancements
function mwj:system/finish/revoke_advancements

## Reset gamerules
function mwj:system/finish/reset_gamerules