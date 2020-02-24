###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Put Tag
execute if entity @s[advancements={mwj:be_killed_by_wolf=true}] run tag @r[scores={ROLE=1..2,DEATH=0}] add StrayBullet
execute if entity @s[advancements={mwj:be_killed_by_nonwolf=true}] run tag @r[scores={ROLE=1..10,DEATH=0}] add StrayBullet
execute if entity @s[advancements={mwj:be_killed_by_cat=true}] run tag @r[scores={ROLE=1..10,DEATH=0}] add StrayBullet

## Store CAT Number
scoreboard players operation @p[tag=StrayBullet] STRAY_BY_CAT = @s NUM

## Deal Instant Damage to a Stray Bullet
effect give @p[tag=StrayBullet] minecraft:instant_damage 1 10 true