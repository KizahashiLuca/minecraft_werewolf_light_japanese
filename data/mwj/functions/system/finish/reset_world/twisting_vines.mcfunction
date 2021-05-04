####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Setblock air replace twisting vines
scoreboard players add @s TwistVinesCount 1
setblock ~ ~ ~ minecraft:air replace
execute as @s[scores={TwistVinesCount=..19}] unless entity @e[type=minecraft:area_effect_cloud,tag=TwistingVinesBegin,distance=..0.5] positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:twisting_vines run function mwj:system/finish/reset_world/twisting_vines
