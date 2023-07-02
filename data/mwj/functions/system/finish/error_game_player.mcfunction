####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Message
function mwj:system/common/message/begin
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"text":"ゲーム開始エラー","color":"yellow","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  人数条件をクリアしていません。","color":"white"}]
tellraw @a ["",{"text":"  必要な人数は","color":"white"},{"text":" 3 ","bold":true,"color":"red"},{"text":"人からです。","color":"white"}]

## Quit Game
function mwj:system/finish/exit_game
