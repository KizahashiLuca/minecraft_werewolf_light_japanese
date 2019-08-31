###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Set Scoreboard
scoreboard objectives add TimeTrigger trigger
scoreboard players reset @a[tag=host] TimeTrigger
scoreboard players enable @a[tag=host] TimeTrigger

## Send a Choices of Time Limit to Host Player
tellraw @a[tag=host] ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @a[tag=host] ["",{"text":"  制限時間を選択してください。","color":"reset"}]
tellraw @a[tag=host] ["",{"text":"    ","color":"reset"},{"text":"<---５分-->","clickEvent":{"action":"run_command","value":"/trigger TimeTrigger set 1"},"color":"green","bold":true},{"text":"  ","color":"reset"},{"text":"<--１０分-->","clickEvent":{"action":"run_command","value":"/trigger TimeTrigger set 2"},"color":"green","bold":true},{"text":"  ","color":"reset"},{"text":"<--１５分-->","clickEvent":{"action":"run_command","value":"/trigger TimeTrigger set 3"},"color":"green","bold":true}]
tellraw @a[tag=host] ["",{"text":"    ","color":"reset"},{"text":"<--２０分-->","clickEvent":{"action":"run_command","value":"/trigger TimeTrigger set 4"},"color":"green","bold":true},{"text":"  ","color":"reset"},{"text":"<--２５分-->","clickEvent":{"action":"run_command","value":"/trigger TimeTrigger set 5"},"color":"green","bold":true},{"text":"  ","color":"reset"},{"text":"<--３０分-->","clickEvent":{"action":"run_command","value":"/trigger TimeTrigger set 6"},"color":"green","bold":true}]
tellraw @a[tag=host] ["",{"text":"----------------------------------\n","color":"reset"}]

## Change for Time Trigger Mode
scoreboard players set Time GAME 91