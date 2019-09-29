###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Store Number of Role
scoreboard players operation Time AddedRole = Time PrevAddedRole

## Store Variables of TimeTrigger to ChangeLimitTime
scoreboard players set Time ChangeLimitTime 5
scoreboard players operation Time ChangeLimitTime *= Time LimitTime

## Exit Setting - Remove Scoreboard
function mwj:system/setting/exit_setting/remove_scoreboard

## Title Hiding Start
title @a times 5 40 15
title @a title ["",{"text":"潜伏時間開始","color":"red","bold":true}]
title @a subtitle ["",{"text":"Hiding Start","color":"white","bold":true}]

## Send a Message Added Role to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"white"},{"text":"Hiding Start!!","color":"green"}]
execute if score Time GameMode matches 1 run tellraw @a ["",{"text":"  ","color":"white"},{"text":"通常人狼モード","color":"green","bold":true}]
execute if score Time GameMode matches 1 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村人陣営の人数が、人狼の人数以下になったら敗北\n","color":"white"}]
execute if score Time GameMode matches 2 run tellraw @a ["",{"text":"  ","color":"white"},{"text":"村人2人生存モード","color":"green","bold":true}]
execute if score Time GameMode matches 2 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村人陣営の人数が、2人未満になったら敗北\n","color":"white"}]
execute if score Time GameMode matches 3 run tellraw @a ["",{"text":"  ","color":"white"},{"text":"我々だ！人狼モード","color":"green","bold":true}]
execute if score Time GameMode matches 3 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村人陣営の人数が、0人になったら敗北\n","color":"white"}]
execute if score Time AddedRole matches 1.. run tellraw @a ["",{"text":"  追加役職 : ","color":"white"}]
execute if score Time AddedRole matches ..0 run tellraw @a ["",{"text":"  追加役職 : なし","color":"white"}]
execute if score Time AddedFox matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"羽 衣 狐","color":"dark_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedFox"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time AddedVilla matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedVilla"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time AddedMason matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedMason"},"color":"white"},{"text":"組","color":"white"}]
execute if score Time AddedDetec matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedDetec"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time AddedCat matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"猫    又","color":"gold","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedCat"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a ["",{"text":"  制限時間 : ","color":"white"},{"score":{"name":"Time","objective":"ChangeLimitTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Reset Scoreboard
scoreboard players set Time TICK 0
scoreboard players set Time SECOND 63
scoreboard players set Time GAME 10