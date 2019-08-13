###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 14 July 2019
## Version: beta-1.3
###############################

tellraw @a[tag=host] ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"  追加役職を選択してください。\n  (デフォルトは追加無し)\n","color":"reset"},{"text":"    ","color":"reset"},{"text":"<--妖狐-->","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 1"},"color":"green","bold":true},{"text":"  ","color":"reset"},{"text":"<--猫又-->","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 2"},"color":"green","bold":true},{"text":"  ","color":"reset"},{"text":"<--無し-->","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 3"},"color":"green","bold":true},{"text":"\n----------------------------------\n","color":"reset"}]

scoreboard players set Time GAME 90