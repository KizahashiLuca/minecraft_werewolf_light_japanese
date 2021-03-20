###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Effect Instant Damage of Fox by Sage
#### Put Tag
tag @s add SeeredFox
#### Store Sage Number
scoreboard players operation @s KilledBySeer = @p[scores={CurrentRole=27,RoleOfNum=1}] NumOfPlayers
#### Deal Instant Damage to Fox
effect give @s minecraft:instant_damage 1 10 true