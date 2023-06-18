####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Sound
execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Title
title @a times 20 40 20
title @a title ["",{"text":"DRAW","color":"white","bold":true}]

## Display Winner
function mwj:system/common/message/begin
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"text":"ゲーム終了","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  両者 ","color":"white"},{"text":"引き分け","bold":true,"color":"white"},{"text":" です！","color":"white"}]

## Change Game Mode
scoreboard players set #MWL Phase 100