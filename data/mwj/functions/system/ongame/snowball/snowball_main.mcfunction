###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

execute if score @s SNOWBALL matches 0 run scoreboard players add Time SNOWBALL 1
execute if score @s SNOWBALL matches 0 run scoreboard players operation @s SNOWBALL = Time SNOWBALL

scoreboard players operation Time DENOMINATOR = @s SNOWBALL
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball] if score @s SNOWBALL = Time DENOMINATOR run kill @s
execute if score Time DENOMINATOR matches 1.. at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Snowball","NoHit"],NoGravity:1b,Particle:"block air",Radius:0.5f,Duration:20}
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=NoHit,sort=nearest,limit=1] if score Time DENOMINATOR matches 1.. run scoreboard players operation @s SNOWBALL = Time DENOMINATOR
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=NoHit,sort=nearest,limit=1] if score Time DENOMINATOR matches 1.. run tag @s remove NoHit