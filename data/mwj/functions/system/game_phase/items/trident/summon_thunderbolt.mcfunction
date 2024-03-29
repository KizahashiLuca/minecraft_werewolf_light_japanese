####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add a tag
tag @s add TridentTarget

## Summon lightning_bolt
summon minecraft:lightning_bolt ~ ~ ~

## Give effect
effect give @a[team=Player,scores={DeathCount=0},distance=..4] minecraft:instant_damage 1 10 true
execute as @a[team=Player,scores={CurrentRole=1..9}] if score @e[tag=TridentTarget,limit=1] NumOfPlayers = @s NumOfPlayers run tag @a[team=Player,scores={DeathCount=0,CurrentRole=10},distance=..4] add TridentDeadFoxbyWolf

## Kill log tag
tag @a[team=Player,scores={DeathCount=0},distance=..4] add TridentHit
scoreboard players operation @a[tag=TridentHit] KilledByTrident = @e[tag=TridentTarget,limit=1] NumOfPlayers

## Add a tag
tag @e[tag=TridentTarget] add TridentDone

## Remove a tag
tag @e[tag=TridentTarget] remove TridentTarget