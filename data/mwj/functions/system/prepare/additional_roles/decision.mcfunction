###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Store Variables of RoleTrigger to AddedRole
scoreboard players operation Time AddedRole = @a[tag=host,limit=1] RoleTrigger
scoreboard players reset @a[tag=host] RoleTrigger

## Send a Common Message
tellraw @a ["",{"text":"\n----------------------------------","color":"reset"}]

## Send a Message Added Role to All Players
execute if score Time AddedRole matches 4 run tellraw @a ["",{"text":"  追加役職は、 ","color":"reset"},{"text":"なし","color":"green","bold":true},{"text":" に設定されました。","color":"reset"}]
execute if score Time AddedRole matches 7 run tellraw @a ["",{"text":"  追加役職は、 ","color":"reset"},{"text":"共有者","color":"dark_green","bold":true},{"text":" に設定されました。","color":"reset"}]
execute if score Time AddedRole matches 8 run tellraw @a ["",{"text":"  追加役職は、 ","color":"reset"},{"text":"探偵","color":"dark_aqua","bold":true},{"text":" に設定されました。","color":"reset"}]
execute if score Time AddedRole matches 10 run tellraw @a ["",{"text":"  追加役職は、 ","color":"reset"},{"text":"猫又","color":"gold","bold":true},{"text":" に設定されました。","color":"reset"}]

## Send a Common Message
tellraw @a ["",{"text":"----------------------------------\n","color":"reset"}]

## Change Time Limit
scoreboard players set Time TIME 0
scoreboard players set Time Limit 16
function mwj:system/prepare/time_limit/trigger