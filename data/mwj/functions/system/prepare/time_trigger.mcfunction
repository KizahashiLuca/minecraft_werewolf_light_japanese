###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 31 March 2019
## Version: beta-1.2
###############################

tellraw @a[tag=host] ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"  制限時間を選択してください。\n","color":"reset"},{"text":"    ","color":"reset"},{"text":"<---５分-->","clickEvent":{"action":"run_command","value":"/trigger TimeTrigger set 1"},"color":"green","bold":true},{"text":"  ","color":"reset"},{"text":"<--１０分-->","clickEvent":{"action":"run_command","value":"/trigger TimeTrigger set 2"},"color":"green","bold":true},{"text":"  ","color":"reset"},{"text":"<--１５分-->","clickEvent":{"action":"run_command","value":"/trigger TimeTrigger set 3"},"color":"green","bold":true},{"text":"\n    ","color":"reset"},{"text":"<--２０分-->","clickEvent":{"action":"run_command","value":"/trigger TimeTrigger set 4"},"color":"green","bold":true},{"text":"  ","color":"reset"},{"text":"<--２５分-->","clickEvent":{"action":"run_command","value":"/trigger TimeTrigger set 5"},"color":"green","bold":true},{"text":"  ","color":"reset"},{"text":"<--３０分-->","clickEvent":{"action":"run_command","value":"/trigger TimeTrigger set 6"},"color":"green","bold":true},{"text":"----------------------------------\n","color":"reset"}]

scoreboard players set Time GAME 1