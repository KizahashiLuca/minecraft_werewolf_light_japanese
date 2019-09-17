###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Store Variables of TimeTrigger to ChangeLimitTime
scoreboard players set Time ChangeLimitTime 5
scoreboard players operation Time ChangeLimitTime *= Time LimitTime

## Exit Setting - Remove Scoreboard
function mwj:system/setting/remove_scoreboard

## Title Hiding Start
title @a times 5 40 15
title @a title ["",{"text":"潜伏時間開始","color":"red","bold":true}]
title @a subtitle ["",{"text":"Hiding Start","color":"white","bold":true}]

## Send a Message Added Role to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"white"},{"text":"Hiding Start!!","color":"green"}]
execute if score Time AddedRole matches 3 run tellraw @a ["",{"text":"  追加役職 : ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true}]
execute if score Time AddedRole matches 4 run tellraw @a ["",{"text":"  追加役職 : ","color":"white"},{"text":"なし","color":"green","bold":true}]
execute if score Time AddedRole matches 7 run tellraw @a ["",{"text":"  追加役職 : ","color":"white"},{"text":"共有者","color":"dark_green","bold":true}]
execute if score Time AddedRole matches 8 run tellraw @a ["",{"text":"  追加役職 : ","color":"white"},{"text":"探偵","color":"dark_aqua","bold":true}]
execute if score Time AddedRole matches 10 run tellraw @a ["",{"text":"  追加役職 : ","color":"white"},{"text":"猫又","color":"gold","bold":true}]
tellraw @a ["",{"text":"  制限時間 : ","color":"white"},{"score":{"name":"Time","objective":"ChangeLimitTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Reset Scoreboard
scoreboard players set Time TICK 0
scoreboard players set Time SECOND 63
scoreboard players set Time GAME 10