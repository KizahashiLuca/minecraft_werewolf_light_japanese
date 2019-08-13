###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 14 July 2019
## Version: beta-1.3
###############################

## message
execute as @a[tag=StrayBullet_wolf] if score @s DEATH matches 1 run tellraw @s ["",{"selector":"@s"},{"text":" は "},{"selector":"@p[scores={ROLE=10,DEATH=1..2}]"},{"text":" に道連れされて突然死しました。"}]
execute as @a[tag=StrayBullet_wolf] if score @s DEATH matches 0 run tellraw @s ["",{"selector":"@s"},{"text":" は "},{"selector":"@p[scores={ROLE=10,DEATH=1..2}]"},{"text":" に道連れされましたが突然死しませんでした。"}]
execute as @a[tag=StrayBullet_nonwolf] if score @s DEATH matches 1 run tellraw @s ["",{"selector":"@s"},{"text":" は "},{"selector":"@p[scores={ROLE=10,DEATH=1..2}]"},{"text":" に道連れされて突然死しました。"}]
execute as @a[tag=StrayBullet_nonwolf] if score @s DEATH matches 0 run tellraw @s ["",{"selector":"@s"},{"text":" は "},{"selector":"@p[scores={ROLE=10,DEATH=1..2}]"},{"text":" に道連れされましたが突然死しませんでした。"}]

## tag process
execute as @a[tag=StrayBullet_wolf] run tag @s remove StrayBullet_wolf
execute as @a[tag=StrayBullet_nonwolf] run tag @s remove StrayBullet_nonwolf

## if killed by wolf
execute as @a[scores={ROLE=10,DEATH=1},advancements={mwj:killed_by_wolf=true}] run tag @r[scores={ROLE=1..2,DEATH=0}] add StrayBullet_wolf
execute as @a[scores={ROLE=10,DEATH=1},advancements={mwj:killed_by_wolf=true}] run effect give @p[tag=StrayBullet_wolf] minecraft:instant_damage 1 10 true

## if killed by nonwolf
execute as @a[scores={ROLE=10,DEATH=1},advancements={mwj:killed_by_nonwolf=true}] run tag @r[scores={ROLE=1..9,DEATH=0}] add StrayBullet_nonwolf
execute as @a[scores={ROLE=10,DEATH=1},advancements={mwj:killed_by_nonwolf=true}] if score @p[tag=StrayBullet_nonwolf] ROLE matches 3 run effect give @p[tag=StrayBullet_nonwolf] minecraft:instant_damage 1 253 true
execute as @a[scores={ROLE=10,DEATH=1},advancements={mwj:killed_by_nonwolf=true}] unless score @p[tag=StrayBullet_nonwolf] ROLE matches 3 run effect give @p[tag=StrayBullet_nonwolf] minecraft:instant_damage 1 10 true

advancement revoke @a only mwj:killed_by_wolf
advancement revoke @a only mwj:killed_by_nonwolf