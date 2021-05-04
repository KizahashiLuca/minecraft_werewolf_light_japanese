####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Common Message
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## teleport to alive players
execute if entity @p[gamemode=adventure] run tp @a[team=Player,scores={DeathCount=1..2}] @p[gamemode=adventure,sort=random]

## Remove storages
execute if score #MWL Version matches 16.. run function mwj:system/finish/remove_storages

## Reset world
execute if score #MWL Version matches 16.. run function mwj:system/finish/reset_world

## Reset scoreboards
function mwj:system/setting/choose_mode/reset_scoreboards

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