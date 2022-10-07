####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Explode conduit
particle minecraft:explosion ~ ~0.2 ~ 1 1 1 0.5 100
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.5 1.5
effect give @a[team=Player,scores={DeathCount=0},distance=..2] minecraft:nausea 10 1 false
effect give @a[team=Player,scores={DeathCount=0},distance=..2] minecraft:glowing 10 0 true
kill @s