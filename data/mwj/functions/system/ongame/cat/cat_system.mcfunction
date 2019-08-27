###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Send a Message to a StrayBullet Player
execute if entity @p[tag=StrayBullet] run tellraw @p[tag=StrayBullet] ["",{"text":"\n----------------------------------","color":"reset"}]
execute if score @p[tag=StrayBullet] DEATH matches 1 run tellraw @p[tag=StrayBullet] ["",{"selector":"@p[tag=StrayBullet]"},{"text":" は "},{"selector":"@s[scores={DEATH=2}]"},{"text":" に道連れされて突然死しました。"}]
execute if score @p[tag=StrayBullet] DEATH matches 0 run tellraw @p[tag=StrayBullet] ["",{"selector":"@p[tag=StrayBullet]"},{"text":" は "},{"selector":"@s[scores={DEATH=2}]"},{"text":" に道連れされましたが突然死しませんでした。"}]
execute if entity @p[tag=StrayBullet] run tellraw @p[tag=StrayBullet] ["",{"text":"----------------------------------\n","color":"reset"}]

## Remove Tags
tag @p[tag=StrayBullet] remove StrayBullet

## Put Tags
execute if entity @s[scores={DEATH=1},advancements={mwj:be_killed_by_wolf=true}] run tag @r[scores={ROLE=1..2,DEATH=0}] add StrayBullet
execute if entity @s[scores={DEATH=1},advancements={mwj:be_killed_by_nonwolf=true}] run tag @r[scores={ROLE=1..10,DEATH=0}] add StrayBullet
execute if entity @s[scores={DEATH=1},advancements={mwj:be_killed_by_cat=true}] run tag @r[scores={ROLE=1..10,DEATH=0}] add StrayBullet

## Deal Instant Damage to a Stray Bullet
execute if entity @s[scores={DEATH=1}] run effect give @p[tag=StrayBullet] minecraft:instant_damage 1 10 true