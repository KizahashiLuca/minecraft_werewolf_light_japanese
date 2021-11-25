####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Fox Dead
scoreboard objectives add OR dummy
scoreboard players set @s OR 0
#### Be killed by werewolf
execute as @s[scores={DeathCount=1},advancements={mwj:be_killed_by_werewolf=true}] run scoreboard players set @s OR 1
#### Be killed by madman
execute as @s[scores={DeathCount=1},advancements={mwj:be_killed_by_madman=true}] run scoreboard players set @s OR 1
#### by trident (wolf)
execute as @s[scores={DeathCount=1},tag=TridentDeadFoxbyWolf] run scoreboard players set @s OR 1
execute as @s[scores={OR=1}] run function mwj:system/game_phase/fox/detect_dead
scoreboard objectives remove OR

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
execute if score @s[scores={RoleOfNum=1}] FoxSpawnSecond = #MWL Second if score @s[scores={RoleOfNum=1}] FoxSpawnTick = #MWL Tick run function mwj:system/game_phase/fox/detect_respawn

## Give Effect
effect give @s[scores={RoleOfNum=1}] minecraft:invisibility 10 1 true
effect clear @s[scores={RoleOfNum=2}]

## Detect Death
execute as @s[scores={DeathCount=1,RoleOfNum=2}] run scoreboard players remove #MWL PURPLE 1

## Clear scoreboard
scoreboard players reset @s[scores={RoleOfNum=2}] FoxSpawnSecond
scoreboard players reset @s[scores={RoleOfNum=2}] FoxSpawnTick
scoreboard players reset @s[scores={RoleOfNum=2}] RoleOfNum