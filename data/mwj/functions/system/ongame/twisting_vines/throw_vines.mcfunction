###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Set twisting vines
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:twisting_vines",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1] at @s align xyz run function mwj:system/ongame/twisting_vines/summon_clouds