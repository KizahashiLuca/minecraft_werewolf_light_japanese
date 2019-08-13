###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 14 July 2019
## Version: beta-1.3
###############################

scoreboard players operation Time ChangeLimitTime *= @a[tag=host,limit=1] TimeTrigger
scoreboard players reset @a[tag=host] TimeTrigger
tellraw @a ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"  制限時間が、 ","color":"reset"},{"score":{"name":"Time","objective":"ChangeLimitTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true},{"text":" に設定されました。\n","color":"reset"},{"text":"----------------------------------\n","color":"reset"}]

## Invisibility
effect give @a minecraft:invisibility 1000000 100 true

## game mode
scoreboard players set Time TIME 0
scoreboard players set Time Limit 61
scoreboard players set Time GAME 10