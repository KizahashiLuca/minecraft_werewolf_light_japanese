###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Set Scoreboard
scoreboard objectives add AddedRole dummy

## Store Variables of RoleTrigger to AddedRole
scoreboard players operation Time AddedRole = @a[tag=host,limit=1] RoleTrigger
scoreboard players reset @a[tag=host] RoleTrigger

## Send a Common Message
tellraw @a ["",{"text":"\n----------------------------------","color":"reset"}]

## Send a Message Added Role to All Players
execute if score Time AddedRole matches 3 run tellraw @a ["",{"text":"  追加役職は、 ","color":"reset"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" に設定されました。","color":"reset"}]
execute if score Time AddedRole matches 4 run tellraw @a ["",{"text":"  追加役職は、 ","color":"reset"},{"text":"なし","color":"green","bold":true},{"text":" に設定されました。","color":"reset"}]
execute if score Time AddedRole matches 7 run tellraw @a ["",{"text":"  追加役職は、 ","color":"reset"},{"text":"共有者","color":"dark_green","bold":true},{"text":" に設定されました。","color":"reset"}]
execute if score Time AddedRole matches 8 run tellraw @a ["",{"text":"  追加役職は、 ","color":"reset"},{"text":"探偵","color":"dark_aqua","bold":true},{"text":" に設定されました。","color":"reset"}]
execute if score Time AddedRole matches 10 run tellraw @a ["",{"text":"  追加役職は、 ","color":"reset"},{"text":"猫又","color":"gold","bold":true},{"text":" に設定されました。","color":"reset"}]

## Send a Common Message
tellraw @a ["",{"text":"----------------------------------\n","color":"reset"}]

## Add Special Roles
scoreboard players remove Time VILLAGER 2
execute if score Time AddedRole matches 3 run scoreboard players set Time FOX 1
execute if score Time AddedRole matches 3 run scoreboard players add Time SEER 1
execute if score Time AddedRole matches 4 run scoreboard players add Time VILLAGER 2
execute if score Time AddedRole matches 7 run scoreboard players set Time MASON 2
execute if score Time AddedRole matches 8 run scoreboard players set Time DETECTIVE 1
execute if score Time AddedRole matches 8 run scoreboard players add Time VILLAGER 1
execute if score Time AddedRole matches 10 run scoreboard players set Time CAT 1
execute if score Time AddedRole matches 10 run scoreboard players add Time VILLAGER 1

## Remove Scoreboard
scoreboard objectives remove AddedRole
scoreboard objectives remove RoleTrigger

## Change Time Limit
scoreboard players set Time TIME 0
scoreboard players set Time Limit 16
function mwj:system/setting/decision_time_limit/time_limit_trigger