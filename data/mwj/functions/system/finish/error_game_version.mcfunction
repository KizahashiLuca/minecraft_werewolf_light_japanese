####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Message
function mwj:system/common/message/begin
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"text":"ゲーム開始エラー","color":"yellow","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  前提バージョンが異なります。","color":"white"}]
tellraw @a ["",{"text":"  このデータパックの対象は以下。","color":"white"}]
tellraw @a ["",{"text":"     v1.19 ","bold":true,"color":"red"},{"text":"-","color":"white"}]

## Quit Game
function mwj:system/finish/exit_game
