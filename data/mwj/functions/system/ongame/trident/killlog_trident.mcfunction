###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Kill log
scoreboard players set @a[tag=TridentHit,scores={DeathCount=1}] KillLogOfTrident 1

## Remove tag
tag @a[tag=TridentHit] remove TridentHit