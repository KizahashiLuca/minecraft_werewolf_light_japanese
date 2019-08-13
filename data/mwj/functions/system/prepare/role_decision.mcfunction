###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 14 July 2019
## Version: beta-1.3
###############################

scoreboard players operation Time AddedRole = @a[tag=host,limit=1] RoleTrigger
scoreboard players reset @a[tag=host] RoleTrigger

## message 
execute if score Time AddedRole matches 1 run tellraw @a ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"  追加役職は、 ","color":"reset"},{"text":"妖狐","color":"dark_purple","bold":true},{"text":" に設定されました。\n","color":"reset"},{"text":"----------------------------------\n","color":"reset"}]
execute if score Time AddedRole matches 2 run tellraw @a ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"  追加役職は、 ","color":"reset"},{"text":"猫又","color":"gold","bold":true},{"text":" に設定されました。\n","color":"reset"},{"text":"----------------------------------\n","color":"reset"}]
execute if score Time AddedRole matches 3 run tellraw @a ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"  追加役職は、 ","color":"reset"},{"text":"なし","color":"green","bold":true},{"text":" に設定されました。\n","color":"reset"},{"text":"----------------------------------\n","color":"reset"}]

## game mode
scoreboard players set Time TIME 0
scoreboard players set Time Limit 16
function mwj:system/prepare/time_trigger