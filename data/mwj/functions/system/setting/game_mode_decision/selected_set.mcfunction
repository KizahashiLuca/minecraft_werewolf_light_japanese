####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Message Game Mode to All Players
tellraw @a [""]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
execute if score #MWL GameMode matches 1 run tellraw @a ["",{"text":"  ゲームモードは、 ","color":"white"},{"text":"通常人狼モード","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score #MWL GameMode matches 2 run tellraw @a ["",{"text":"  ゲームモードは、 ","color":"white"},{"text":"村人2人生存モード","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score #MWL GameMode matches 3 run tellraw @a ["",{"text":"  ゲームモードは、 ","color":"white"},{"text":"殲滅モード","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a [""]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to