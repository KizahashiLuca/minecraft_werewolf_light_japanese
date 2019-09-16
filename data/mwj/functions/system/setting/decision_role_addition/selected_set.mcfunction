###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Send a Message Added Role to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
execute if score Time AddedRole matches 3 run tellraw @a ["",{"text":"  追加役職は、 ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score Time AddedRole matches 4 run tellraw @a ["",{"text":"  追加役職は、 ","color":"white"},{"text":"なし","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score Time AddedRole matches 7 run tellraw @a ["",{"text":"  追加役職は、 ","color":"white"},{"text":"共有者","color":"dark_green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score Time AddedRole matches 8 run tellraw @a ["",{"text":"  追加役職は、 ","color":"white"},{"text":"探偵","color":"dark_aqua","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score Time AddedRole matches 10 run tellraw @a ["",{"text":"  追加役職は、 ","color":"white"},{"text":"猫又","color":"gold","bold":true},{"text":" に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to_choose_mode