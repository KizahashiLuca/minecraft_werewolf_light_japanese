####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Effect Instant Damage of Fox by Seer
#### Put Tag
tag @s add SeeredFox
#### Store Seer Number
scoreboard players operation @s KilledBySeer = @p[scores={CurrentRole=25,RoleOfNum=1}] NumOfPlayers
#### Deal Instant Damage to Fox
effect give @s minecraft:instant_damage 1 10 true