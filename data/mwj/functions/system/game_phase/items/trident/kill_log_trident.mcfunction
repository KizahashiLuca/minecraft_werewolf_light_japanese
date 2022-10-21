####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Kill log
scoreboard players set @a[tag=TridentHit,scores={DeathCount=1}] KillLogOfTrident 1

## Remove tag
tag @a[tag=TridentHit] remove TridentHit