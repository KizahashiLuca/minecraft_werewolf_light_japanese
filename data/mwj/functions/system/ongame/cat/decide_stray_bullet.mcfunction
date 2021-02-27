###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Put Tag
execute as @s[advancements={mwj:be_killed_by_wolf=true}] run tag @p[scores={CurrentRole=1..9,DeathCount=0},sort=random] add StrayBullet
execute as @s[advancements={mwj:be_killed_by_nonwolf=true}] run tag @p[scores={CurrentRole=1..40,DeathCount=0},sort=random] add StrayBullet
execute as @s[advancements={mwj:be_killed_by_cat=true}] run tag @p[scores={CurrentRole=1..40,DeathCount=0},sort=random] add StrayBullet

## Store CAT Number
scoreboard players operation @p[tag=StrayBullet] KilledByCat = @s NumOfPlayers

## Deal Instant Damage to a Stray Bullet
effect give @p[tag=StrayBullet] minecraft:instant_damage 1 10 true