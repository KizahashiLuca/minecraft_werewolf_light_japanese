###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Store Variables of TimeTrigger to ChangeLimitTime
scoreboard players operation Time ChangeLimitTime *= @a[tag=host,limit=1] TimeTrigger
scoreboard players reset @a[tag=host] TimeTrigger

## Send a Message the Time Limit to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @a ["",{"text":"  制限時間が、 ","color":"reset"},{"score":{"name":"Time","objective":"ChangeLimitTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true},{"text":" に設定されました。","color":"reset"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"reset"}]

## Give Effect of Invisibility
effect give @a minecraft:invisibility 1000000 100 true

## Change Time Limit
scoreboard players set Time TIME 0
scoreboard players set Time Limit 61
scoreboard players set Time GAME 10