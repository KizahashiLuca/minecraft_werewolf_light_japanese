###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 14 July 2019
## Version: beta-1.3
###############################

execute as @a[advancements={mwj:damaged_by_nonwolf=true}] run effect give @s minecraft:instant_damage 1 3 true
execute as @a[advancements={mwj:damaged_by_wolf=true}] run effect give @s minecraft:instant_health 1 3 true
advancement revoke @a only mwj:damaged_by_nonwolf
advancement revoke @a only mwj:damaged_by_wolf

## execute if score @s DEATH matches 1..2 run tellraw @s ["",{"selector":"@s","color":"reset"},{"text":" は占われて、死亡しました。","color":"reset"}]
## execute if score @s DEATH matches 0 run tellraw @s ["",{"selector":"@s","color":"reset"},{"text":" は占わeれましたが、死亡しませんでした。","color":"reset"}]