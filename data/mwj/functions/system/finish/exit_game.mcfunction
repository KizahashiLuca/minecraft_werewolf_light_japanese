###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Send a Common Message
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## teleport to alive players
execute if entity @p[gamemode=adventure] run tp @a[team=Player,scores={DeathCount=1..2}] @p[gamemode=adventure,sort=random]

## Remove storages
execute if score #MWL Version matches 16.. run function mwj:system/finish/remove_storages

## Reset world
execute if score #MWL Version matches 16.. run function mwj:system/finish/reset_world

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