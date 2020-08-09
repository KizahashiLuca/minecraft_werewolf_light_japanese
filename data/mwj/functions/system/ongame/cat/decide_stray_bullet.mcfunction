###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Put Tag
execute as @s[advancements={mwj:be_killed_by_wolf=true}] run tag @r[scores={CurrentRole=1..9,DeathCount=0}] add StrayBullet
execute as @s[advancements={mwj:be_killed_by_nonwolf=true}] run tag @r[scores={CurrentRole=1..40,DeathCount=0}] add StrayBullet
execute as @s[advancements={mwj:be_killed_by_cat=true}] run tag @r[scores={CurrentRole=1..40,DeathCount=0}] add StrayBullet

## Store CAT Number
scoreboard players operation @p[tag=StrayBullet] KilledByCat = @s NumOfPlayers

## Deal Instant Damage to a Stray Bullet
effect give @p[tag=StrayBullet] minecraft:instant_damage 1 10 true