###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 Aug 2020
## Version: v.1.4
###############################

## Send a Message
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light v.1.4","color":"red","bold":true}]
tellraw @a ["",{"text":"  - Minecraft version 1.","color":"green","bold":true},{"score":{"name":"#MWL","objective":"Version"},"color":"green","bold":true}]
tellraw @a ["",{"text":" ","color":"white"},{"text":"Error","color":"yellow","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲーム中に、新たなゲームは開始できません。","color":"white"}]
tellraw @a ["",{"text":"  以下のコマンドで、ゲームを中断してください。","color":"white"}]
tellraw @a ["",{"text":"    ","color":"white"},{"text":"/function #mwj:stop","color":"light_purple","hoverEvent":{"action":"show_text","value":"クリックしてゲーム中断"},"clickEvent":{"action":"suggest_command","value":"/function #mwj:stop"}}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]