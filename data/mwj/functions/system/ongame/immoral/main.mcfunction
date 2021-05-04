###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Fox Dead
execute as @s[scores={DeathCount=0,RoleDone=0}] if score #MWL PURPLE matches ..0 run function mwj:system/ongame/immoral/commit_suicide

## Effect glowing
execute as @a[scores={DeathCount=1,RoleDone=0}] run function mwj:system/ongame/immoral/detect_dead