###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Select Random StrayBullet
execute as @s[scores={DeathCount=1}] run function mwj:system/ongame/cat/decide_stray_bullet

## Send a Message to a StrayBullet Player
execute if score @s[scores={DeathCount=2}] NUM = @p[tag=StrayBullet] KilledByCat run function mwj:system/ongame/cat/message_to_stray_bullet