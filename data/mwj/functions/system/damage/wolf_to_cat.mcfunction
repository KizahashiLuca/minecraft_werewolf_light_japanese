###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 10 June 2019
## Version: beta-1.2.2
###############################

tag @r[scores={ROLE=1..2,DEATH=0}] add StrayBullet_wolf
effect give @p[tag=StrayBullet_wolf] minecraft:instant_damage 1 10 true
advancement revoke @s only mwj:from_wolf
advancement revoke @s only mwj:from_nonwolf