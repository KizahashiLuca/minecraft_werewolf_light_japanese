###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Fox Dead
execute as @s[scores={DeathCount=1},advancements={mwj:be_killed_by_wolf=true}] run function mwj:system/ongame/fox/fox_dead
execute as @s[scores={DeathCount=1},tag=TridentDeadFoxbyWolf] run function mwj:system/ongame/fox/fox_dead
execute as @s[scores={DeathCount=1},advancements={mwj:be_killed_by_nonwolf=true},tag=!TridentDeadFoxbyWolf] run scoreboard players set @s RoleOfNum 2
execute as @s[scores={DeathCount=1},advancements={mwj:be_killed_by_cat=true}] run scoreboard players set @s RoleOfNum 2

## Detect Respawn
execute if score @s[scores={RoleOfNum=1}] FoxSpawnSecond = #MWL Second if score @s[scores={RoleOfNum=1}] FoxSpawnTick = #MWL Tick run function mwj:system/ongame/fox/fox_respawn

## Give Effect
effect give @s[scores={RoleOfNum=1}] minecraft:invisibility 10 1 true
effect clear @s[scores={RoleOfNum=2}]

## Hit by NonWolf
scoreboard players reset @s[scores={RoleOfNum=2}] FoxSpawnSecond
scoreboard players reset @s[scores={RoleOfNum=2}] FoxSpawnTick
scoreboard players set @s[scores={RoleOfNum=2}] RoleOfNum 0

## Detect Death
execute as @s[scores={DeathCount=1,RoleOfNum=0}] run scoreboard players remove #MWL PURPLE 1