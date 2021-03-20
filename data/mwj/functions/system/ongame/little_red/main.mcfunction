###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Set grave
execute as @s[scores={DeathCount=1}] run function mwj:system/ongame/little_red/set_grave

## Main loop
execute as @s[tag=Cryptobiosis,scores={DeathCount=1..2}] run function mwj:system/ongame/little_red/in_grave

## Leave grave
execute if entity @p[tag=WereWolf,scores={CurrentRole=1..4,DeathCount=1}] as @s[tag=Cryptobiosis,scores={DeathCount=2}] run function mwj:system/ongame/little_red/leave_grave