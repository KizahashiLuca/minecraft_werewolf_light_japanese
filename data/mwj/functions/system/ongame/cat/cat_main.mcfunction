###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Select Random StrayBullet
execute as @s[scores={DeathCount=1}] run function mwj:system/ongame/cat/cat_random_tag

## Send a Message to a StrayBullet Player
execute if score @s[scores={DeathCount=2}] NUM = @p[tag=StrayBullet] KilledByCat run function mwj:system/ongame/cat/cat_stray_bullet