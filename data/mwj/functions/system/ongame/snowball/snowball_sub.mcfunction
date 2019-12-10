###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

tag @s add DetectHit
scoreboard players operation Time DENOMINATOR = @s SNOWBALL
execute as @e[type=minecraft:snowball] if score @s SNOWBALL = Time DENOMINATOR run tag @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectHit,limit=1] remove DetectHit
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectHit,limit=1] run function mwj:system/ongame/snowball/snowball_cloud_effect
scoreboard players set Time DENOMINATOR 0