####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send message
tellraw @a ["",{"text":"    勝敗判定 : ","color":"white"},{"text":"村人2人生存モード","color":"green","bold":true}]
tellraw @a ["",{"text":"      村人陣営の人数が、2人未満になったら、","color":"white"}]
tellraw @a ["",{"text":"      人狼陣営の勝利です。","color":"white"}]