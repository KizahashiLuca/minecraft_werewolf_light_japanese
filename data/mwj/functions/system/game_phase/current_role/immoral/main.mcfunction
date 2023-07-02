####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Fox Dead
execute as @s[scores={DeathCount=0,RoleDone=0}] if score #MWL PURPLE matches ..0 run function mwj:system/game_phase/current_role/immoral/commit_suicide

## Effect glowing
execute as @s[scores={DeathCount=1,RoleDone=0}] run function mwj:system/game_phase/current_role/immoral/detect_dead