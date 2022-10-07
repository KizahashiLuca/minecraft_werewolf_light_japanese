####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Sound
execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Title
title @a times 20 40 20
title @a title ["",{"text":"FOX","color":"dark_purple","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"dark_purple","bold":true}]

## Display Winners
function mwj:system/common/message/begin
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"text":"ゲーム終了","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
execute if entity @p[predicate=mwj:roles/immoralist] run tellraw @a ["",{"text":"  勝者は ","color":"white"},{"text":"羽衣狐＆背徳者","bold":true,"color":"dark_purple"},{"text":" です！","color":"white"}]
execute unless entity @p[predicate=mwj:roles/immoralist] run tellraw @a ["",{"text":"  勝者は ","color":"white"},{"text":"羽衣狐","bold":true,"color":"dark_purple"},{"text":" です！","color":"white"}]

## Change Game Mode
scoreboard players set #MWL Phase 100
scoreboard players set #MWL WINNER 3