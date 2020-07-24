###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: beta-1.6
###############################

## Add a tag
tag @s add TridentTarget

## Summon lightning_bolt
execute at @e[tag=TridentTarget] run summon minecraft:lightning_bolt ~ ~ ~

## Give effect
execute at @e[tag=TridentTarget] run effect give @a[team=Player,scores={DeathCount=0},distance=..4] minecraft:instant_damage 1 10 true

## Kill log tag
execute at @e[tag=TridentTarget] run tag @a[team=Player,scores={DeathCount=0},distance=..4] add TridentHit
scoreboard players operation @a[tag=TridentHit] KilledByTrident = @e[tag=TridentTarget,limit=1] NUM

## Add a tag
tag @e[tag=TridentTarget] add TridentDone

## Remove a tag
tag @e[tag=TridentTarget] remove TridentTarget