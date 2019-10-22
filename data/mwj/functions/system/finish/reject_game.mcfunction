###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Send a Message
tellraw @a ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Error!!","color":"yellow"}]
tellraw @a ["",{"text":"  ゲーム中に、新たなゲームを開始することはできません。","color":"reset"}]
tellraw @a ["",{"text":"  以下のコマンドを実行して、ゲームを中断してください。","color":"reset"}]
tellraw @a ["",{"text":"    ","color":"reset"},{"text":"/function #mwj:stop","color":"light_purple"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"reset"}]