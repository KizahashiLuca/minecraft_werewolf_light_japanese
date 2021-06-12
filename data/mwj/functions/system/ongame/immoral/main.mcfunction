####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Fox Dead
execute as @s[scores={DeathCount=0,RoleDone=0}] if score #MWL PURPLE matches ..0 run function mwj:system/ongame/immoral/commit_suicide

## Effect glowing
execute as @s[scores={DeathCount=1,RoleDone=0}] run function mwj:system/ongame/immoral/detect_dead