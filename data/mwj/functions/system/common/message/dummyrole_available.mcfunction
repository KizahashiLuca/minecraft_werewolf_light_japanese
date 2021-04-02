###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Send message
tellraw @a ["",{"text":"    役職欠け : ","color":"white"},{"text":"あり","color":"green","bold":true}]
tellraw @a ["",{"text":"    参加者数 : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" (役職数 : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfRoles"},"color":"green","bold":true},{"text":"役","color":"green","bold":true},{"text":")","color":"white"}]