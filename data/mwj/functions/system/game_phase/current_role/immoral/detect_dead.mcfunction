####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Fox Glowing
effect give @p[scores={CurrentRole=10,DeathCount=0},sort=random] minecraft:glowing 5 0 true

scoreboard players set @s RoleDone 1