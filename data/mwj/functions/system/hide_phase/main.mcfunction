####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Log-in midtime of preparation
execute as @a[predicate=mwj:system/common/en_route/not_spectator] run function mwj:system/common/en_route/not_game_phase
execute as @a[predicate=mwj:system/common/en_route/spectator] run team leave @s

## Process the timer system
function mwj:system/common/time/tick

## Remove Entity
function mwj:system/hide_phase/set_entities

## Prepare Initially
execute if predicate mwj:system/common/time/zero run function mwj:system/game_phase/change_to