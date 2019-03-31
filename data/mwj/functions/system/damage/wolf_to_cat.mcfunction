###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 31 March 2019
## Version: beta-1.2
###############################

execute if score @s ROLE matches 10 run tag @r[scores={ROLE=1..2,DEATH=0}] add StrayBullet
execute as @p[tag=StrayBullet] run effect give @s minecraft:instant_damage 1 10 true