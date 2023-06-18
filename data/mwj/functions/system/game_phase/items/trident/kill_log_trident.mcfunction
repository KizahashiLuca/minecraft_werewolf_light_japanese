####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Kill log
scoreboard players set @a[tag=TridentHit,scores={DeathCount=1}] KillLogOfTrident 1

## Remove tag
tag @a[tag=TridentHit] remove TridentHit