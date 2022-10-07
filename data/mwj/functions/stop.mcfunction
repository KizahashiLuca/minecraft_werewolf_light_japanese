####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Quit the game
execute if predicate mwj:phase/on_game run function mwj:system/common/message/begin
tellraw @a[predicate=mwj:phase/on_game] ["",{"text":"  ","color":"white"},{"text":"ゲーム中断","color":"red","bold":true}]
tellraw @a[predicate=mwj:phase/on_game] ["",{"text":"----------------------------------","color":"white"}]
tellraw @a[predicate=mwj:phase/on_game] ["",{"text":"  ゲームが中断されました。","color":"white"}]

## Quit Display
execute if predicate mwj:phase/hide_phase run function mwj:system/finish/exit_game
execute if predicate mwj:phase/game_phase run function mwj:system/finish/end_game
execute if predicate mwj:phase/setting_phase run function mwj:system/finish/exit_game
execute if predicate mwj:phase/exit_game run function mwj:system/finish/exit_game