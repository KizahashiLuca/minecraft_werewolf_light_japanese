###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Add a tag
tag @s add TridentTarget

## Summon lightning_bolt
execute at @e[tag=TridentTarget] run summon minecraft:lightning_bolt ~ ~ ~

## Give effect
execute at @e[tag=TridentTarget] run effect give @a[team=Player,scores={DeathCount=0},distance=..4] minecraft:instant_damage 1 10 true
execute as @a[team=Player,scores={CurrentRole=1..9}] if score @e[tag=TridentTarget,limit=1] NumOfPlayers = @s NumOfPlayers at @e[tag=TridentTarget] run tag @a[team=Player,scores={DeathCount=0,CurrentRole=10},distance=..4] add TridentDeadFoxbyWolf

## Kill log tag
execute at @e[tag=TridentTarget] run tag @a[team=Player,scores={DeathCount=0},distance=..4] add TridentHit
scoreboard players operation @a[tag=TridentHit] KilledByTrident = @e[tag=TridentTarget,limit=1] NumOfPlayers

## Add a tag
tag @e[tag=TridentTarget] add TridentDone

## Remove a tag
tag @e[tag=TridentTarget] remove TridentTarget