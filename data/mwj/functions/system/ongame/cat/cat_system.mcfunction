###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Send a Message to a StrayBullet Wolf
execute as @p[tag=StrayBullet_wolf] run tellraw @s ["",{"text":"\n----------------------------------","color":"reset"}]
execute as @p[tag=StrayBullet_wolf] if score @s DEATH matches 1 run tellraw @s ["",{"selector":"@s"},{"text":" は "},{"selector":"@p[scores={ROLE=10,DEATH=1..2}]"},{"text":" に道連れされて突然死しました。"}]
execute as @p[tag=StrayBullet_wolf] if score @s DEATH matches 0 run tellraw @s ["",{"selector":"@s"},{"text":" は "},{"selector":"@p[scores={ROLE=10,DEATH=1..2}]"},{"text":" に道連れされましたが突然死しませんでした。"}]
execute as @p[tag=StrayBullet_wolf] run tellraw @s ["",{"text":"----------------------------------\n","color":"reset"}]

## Send a Message to a StrayBullet NonWolf
execute as @p[tag=StrayBullet_nonwolf] run tellraw @s ["",{"text":"\n----------------------------------","color":"reset"}]
execute as @p[tag=StrayBullet_nonwolf] if score @s DEATH matches 1 run tellraw @s ["",{"selector":"@s"},{"text":" は "},{"selector":"@p[scores={ROLE=10,DEATH=1..2}]"},{"text":" に道連れされて突然死しました。"}]
execute as @p[tag=StrayBullet_nonwolf] if score @s DEATH matches 0 run tellraw @s ["",{"selector":"@s"},{"text":" は "},{"selector":"@p[scores={ROLE=10,DEATH=1..2}]"},{"text":" に道連れされましたが突然死しませんでした。"}]
execute as @p[tag=StrayBullet_nonwolf] run tellraw @s ["",{"text":"----------------------------------\n","color":"reset"}]

## Remove Tags
execute as @a[tag=StrayBullet_wolf] run tag @s remove StrayBullet_wolf
execute as @a[tag=StrayBullet_nonwolf] run tag @s remove StrayBullet_nonwolf

## Put Tags
execute as @p[scores={ROLE=10,DEATH=1..2},advancements={mwj:be_killed_by_wolf=true}] run tag @r[scores={ROLE=1..2,DEATH=0}] add StrayBullet_wolf
execute as @p[scores={ROLE=10,DEATH=1..2},advancements={mwj:be_killed_by_nonwolf=true}] run tag @r[scores={ROLE=1..9,DEATH=0}] add StrayBullet_nonwolf

## Deal Instant Damage to a Stray Bullet
execute as @p[scores={ROLE=10,DEATH=1..2},advancements={mwj:be_killed_by_wolf=true}] run effect give @p[tag=StrayBullet_wolf] minecraft:instant_damage 1 10 true
execute as @p[scores={ROLE=10,DEATH=1..2},advancements={mwj:be_killed_by_nonwolf=true}] run effect give @p[tag=StrayBullet_nonwolf] minecraft:instant_damage 1 10 true
