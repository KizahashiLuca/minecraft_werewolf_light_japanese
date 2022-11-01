####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Reset twisting vines
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=TwistingVinesEnd] TwistVinesCount 0
execute as @e[type=minecraft:area_effect_cloud,tag=TwistingVinesEnd] at @s align xyz run function mwj:system/finish/reset_world/twisting_vines
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:twisting_vines"}}]