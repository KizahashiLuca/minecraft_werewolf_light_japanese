###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Setblock air replace twisting vines
scoreboard players add @s TwistVinesCount 1
setblock ~ ~ ~ minecraft:air replace
execute as @s[scores={TwistVinesCount=..19}] unless entity @e[type=minecraft:area_effect_cloud,tag=TwistingVinesBegin,distance=..0.5] positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:twisting_vines run function mwj:system/finish/reset_world/twisting_vines
