###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Put Tag
scoreboard objectives add OR dummy
scoreboard players set @s OR 0
execute as @s[advancements={mwj:be_killed_by_werewolf=true}] run scoreboard players set @s OR 1
execute as @s[advancements={mwj:be_killed_by_madman=true}] run scoreboard players set @s OR 1
tag @r[scores={CurrentRole=1..9,DeathCount=0,OR=1}] add StrayBullet
scoreboard objectives remove OR

execute as @s[advancements={mwj:be_killed_by_nonwolf=true}] run tag @r[scores={CurrentRole=1..40,DeathCount=0}] add StrayBullet
execute as @s[advancements={mwj:be_killed_by_cat=true}] run tag @r[scores={CurrentRole=1..40,DeathCount=0}] add StrayBullet

## Store CAT Number
scoreboard players operation @p[tag=StrayBullet] KilledByCat = @s NumOfPlayers

## Deal Instant Damage to a Stray Bullet
effect give @p[tag=StrayBullet] minecraft:instant_damage 1 10 true