####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set bossbar
execute if predicate mwj:phase/on_game run bossbar set mwj:bossbar players @a
## Setting phase
execute if predicate mwj:phase/setting_phase run function mwj:system/setting_phase/main
## Game phase
execute if predicate mwj:phase/game_phase run function mwj:system/game_phase/main
## Hide Time
execute if predicate mwj:phase/hide_phase run function mwj:system/hide_phase/main
## Exit Game
execute if predicate mwj:phase/exit_game run function mwj:system/finish/end_game
