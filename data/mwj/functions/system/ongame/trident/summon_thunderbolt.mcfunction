###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Add a tag
tag @s add TridentTarget

## Summon lightning_bolt
execute as @a[team=Player] if score @s NUM = @e[tag=TridentTarget,limit=1] NUM at @e[tag=TridentTarget] run summon minecraft:lightning_bolt ~ ~ ~

## Give effect
execute as @a[team=Player] if score @s NUM = @e[tag=TridentTarget,limit=1] NUM at @e[tag=TridentTarget] run effect give @a[team=Player,scores={DEATH=0},distance=..4] minecraft:instant_damage 1 10 true

## Add a tag
tag @e[tag=TridentTarget] add TridentDone

## Remove a tag
tag @e[tag=TridentTarget] remove TridentTarget