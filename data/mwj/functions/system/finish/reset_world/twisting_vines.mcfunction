####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Setblock air replace twisting vines
scoreboard players add @s TwistVinesCount 1
setblock ~ ~ ~ minecraft:air replace
execute as @s[scores={TwistVinesCount=..19}] unless entity @e[type=minecraft:area_effect_cloud,tag=TwistingVinesBegin,distance=..0.5] positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:twisting_vines run function mwj:system/finish/reset_world/twisting_vines
