####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Sound
execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Revoke advancements
function mwj:system/finish/revoke_advancements

## Recount players
function mwj:system/common/roles/recount_roles/main

## Setting games
execute if predicate mwj:system/setting_phase/initial_setting/required_players run function mwj:system/game_phase/settings/main

## Error game
execute if predicate mwj:system/setting_phase/initial_setting/shortage_players run function mwj:system/finish/error_game_player