###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Set twisting vines
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:twisting_vines",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1] at @s align xyz run function mwj:system/ongame/twisting_vines/summon_clouds