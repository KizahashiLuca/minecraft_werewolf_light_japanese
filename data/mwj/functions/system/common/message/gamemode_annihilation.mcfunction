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
tellraw @a ["",{"text":"    勝敗判定 : ","color":"white"},{"text":"殲滅モード","color":"green","bold":true}]
tellraw @a ["",{"text":"      村人陣営の人数が、0人になったら、","color":"white"}]
tellraw @a ["",{"text":"      人狼陣営の勝利です。","color":"white"}]