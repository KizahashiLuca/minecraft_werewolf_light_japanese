####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Setblock twisting vines
scoreboard players add @s TwistVinesCount 1
setblock ~ ~ ~ minecraft:twisting_vines keep
playsound minecraft:block.weeping_vines.place block @a ~ ~ ~
execute as @s[scores={TwistVinesCount=20}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["TwistingVinesEnd"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:100000000}
execute as @s[scores={TwistVinesCount=..19}] unless block ~ ~1 ~ minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["TwistingVinesEnd"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:100000000}
execute as @s[scores={TwistVinesCount=..19}] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air run function mwj:system/game_phase/items/twisting_vines/setblock_vines
