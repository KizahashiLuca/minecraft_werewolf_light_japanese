####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Effect Instant Damage of Fox by Sage
#### Put Tag
tag @s add SeeredFox
#### Store Sage Number
scoreboard players operation @s KilledBySeer = @p[scores={CurrentRole=27,TagOfRoleWork=1}] NumOfPlayers
#### Deal Instant Damage to Fox
effect give @s minecraft:instant_damage 1 10 true