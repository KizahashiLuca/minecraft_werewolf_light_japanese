###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 March 2019
## Version: beta-1.1
###############################


scoreboard players operation Time ChangeLimitTime *= @a[tag=host,limit=1] TimeTrigger
scoreboard players set Time GAME 2
scoreboard players reset @a[tag=host] TimeTrigger
tellraw @a ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"  制限時間が、 ","color":"reset"},{"score":{"name":"Time","objective":"ChangeLimitTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true},{"text":" に設定されました。\n","color":"reset"},{"text":"----------------------------------\n","color":"reset"}]