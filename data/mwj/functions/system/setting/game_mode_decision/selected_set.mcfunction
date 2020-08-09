###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Send a Message Game Mode to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
execute if score #MWL GameMode matches 1 run tellraw @a ["",{"text":"  ゲームモードは、 ","color":"white"},{"text":"通常人狼モード","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score #MWL GameMode matches 2 run tellraw @a ["",{"text":"  ゲームモードは、 ","color":"white"},{"text":"村人2人生存モード","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score #MWL GameMode matches 3 run tellraw @a ["",{"text":"  ゲームモードは、 ","color":"white"},{"text":"殲滅モード","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to