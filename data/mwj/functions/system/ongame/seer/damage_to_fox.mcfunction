###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Effect Instant Damage of Fox by Seer
#### Put Tag
tag @s add SeeredFox
#### Store Seer Number
scoreboard players operation @s KilledBySeer = @p[scores={CurrentRole=25,RoleOfNum=1}] NumOfPlayers
#### Deal Instant Damage to Fox
effect give @s minecraft:instant_damage 1 10 true