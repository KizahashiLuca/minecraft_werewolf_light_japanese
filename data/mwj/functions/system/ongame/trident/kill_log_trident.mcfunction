###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Kill log
scoreboard players set @a[tag=TridentHit,scores={DeathCount=1}] KillLogOfTrident 1

## Remove tag
tag @a[tag=TridentHit] remove TridentHit