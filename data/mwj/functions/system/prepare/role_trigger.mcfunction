###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Send a Choices of Special Roles to Host Player
tellraw @a[tag=host] ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"  追加役職を選択してください。\n  (デフォルトは追加無し)\n","color":"reset"},{"text":"    ","color":"reset"},{"text":"<--無し-->","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 4"},"color":"green","bold":true},{"text":"  ","color":"reset"},{"text":"<--共有者-->","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 7"},"color":"dark_green","bold":true},{"text":"  ","color":"reset"},{"text":"<--猫又-->","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 10"},"color":"gold","bold":true},{"text":"\n----------------------------------\n","color":"reset"}]

## Change for Role Trigger Mode
scoreboard players set Time GAME 90