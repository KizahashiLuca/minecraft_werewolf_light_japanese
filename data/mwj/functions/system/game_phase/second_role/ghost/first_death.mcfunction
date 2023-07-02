####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send message
tellraw @s [""]
tellraw @s ["",{"text":"----------------------------------","color":"white"}]
tellraw @s ["",{"text":"あなたは、","color":"white"},{"text":"地縛霊","color":"dark_purple","bold":true},{"text":"です。","color":"white"}]
tellraw @s ["",{"text":"----------------------------------","color":"white"}]
tellraw @s [""]

## Set spawnpoint
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["GhostSpawn"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:100000000}