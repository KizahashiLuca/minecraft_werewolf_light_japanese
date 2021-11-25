####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Sound
execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Title
title @a times 20 40 20
title @a title ["",{"text":"VILLAGER","color":"green","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"green","bold":true}]

## Display Winner
function mwj:system/finish/finish_game_title
tellraw @a ["",{"text":"  勝者は ","color":"white"},{"text":"村人陣営","bold":true,"color":"green"},{"text":" です！","color":"white"}]

## Change Game Mode
scoreboard players set #MWL Phase 100
scoreboard players set #MWL WINNER 2