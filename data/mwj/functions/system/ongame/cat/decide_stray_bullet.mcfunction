###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Put Tag
scoreboard objectives add OR dummy
scoreboard players set @s OR 0
scoreboard players set @s[advancements={mwj:be_killed_by_werewolf=true}] OR 1
scoreboard players set @s[advancements={mwj:be_killed_by_madman=true}] OR 1
execute as @s[scores={OR=1}] run tag @p[scores={CurrentRole=1..9,DeathCount=0},sort=random] add StrayBullet
scoreboard objectives remove OR

execute as @s[advancements={mwj:be_killed_by_nonwolf=true}] run tag @p[scores={CurrentRole=1..40,DeathCount=0},sort=random] add StrayBullet
execute as @s[advancements={mwj:be_killed_by_cat=true}] run tag @p[scores={CurrentRole=1..40,DeathCount=0},sort=random] add StrayBullet

## Store CAT Number
scoreboard players operation @p[tag=StrayBullet] KilledByCat = @s NumOfPlayers

## Deal Instant Damage to a Stray Bullet
effect give @p[tag=StrayBullet] minecraft:instant_damage 1 10 true
