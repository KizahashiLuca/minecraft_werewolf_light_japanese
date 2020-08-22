###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Fox Dead by wolf
execute as @s[scores={DeathCount=1},advancements={mwj:be_killed_by_wolf=true}] run function mwj:system/ongame/fox/detect_dead

## Fox Dead by trident (wolf)
execute as @s[scores={DeathCount=1},tag=TridentDeadFoxbyWolf] run function mwj:system/ongame/fox/detect_dead

## Fox Dead by nonwolf
scoreboard players set @s[scores={DeathCount=1},advancements={mwj:be_killed_by_nonwolf=true},tag=!TridentDeadFoxbyWolf] RoleOfNum 2
scoreboard players set @s[scores={DeathCount=1},tag=SeeredFox,tag=!TridentDeadFoxbyWolf] RoleOfNum 2

## Fox suicide
scoreboard players set #MWL CountOfKiller 0
scoreboard players set #MWL CountOfVictim 0
execute as @a[team=Player,advancements={mwj:killed_player=true}] run scoreboard players add #MWL CountOfKiller 1
execute as @a[team=Player,scores={DeathCount=1}] run scoreboard players add #MWL CountOfVictim 1
execute if score #MWL CountOfVictim matches 1.. if score #MWL CountOfKiller matches 0 run scoreboard players set @s[scores={DeathCount=1},tag=!TridentDeadFoxbyWolf] RoleOfNum 2
scoreboard players set #MWL CountOfVictim 0
scoreboard players set #MWL CountOfKiller 0

## Fox Dead by cat
scoreboard players set @s[scores={DeathCount=1},advancements={mwj:be_killed_by_cat=true}] RoleOfNum 2

## Detect Respawn
execute if score @s[scores={RoleOfNum=1}] FoxSpawnSecond = #MWL Second if score @s[scores={RoleOfNum=1}] FoxSpawnTick = #MWL Tick run function mwj:system/ongame/fox/detect_respawn

## Give Effect
effect give @s[scores={RoleOfNum=1}] minecraft:invisibility 10 1 true
effect clear @s[scores={RoleOfNum=2}]

## Detect Death
execute as @s[scores={DeathCount=1,RoleOfNum=2}] run scoreboard players remove #MWL PURPLE 1

## Clear scoreboard
scoreboard players reset @s[scores={RoleOfNum=2}] FoxSpawnSecond
scoreboard players reset @s[scores={RoleOfNum=2}] FoxSpawnTick
scoreboard players reset @s[scores={RoleOfNum=2}] RoleOfNum