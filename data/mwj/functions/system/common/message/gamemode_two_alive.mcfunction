####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send message
tellraw @a ["",{"text":"    勝敗判定 : ","color":"white"},{"text":"村人2人生存モード","color":"green","bold":true}]
tellraw @a ["",{"text":"      村人陣営の人数が、2人未満になったら、","color":"white"}]
tellraw @a ["",{"text":"      人狼陣営の勝利です。","color":"white"}]