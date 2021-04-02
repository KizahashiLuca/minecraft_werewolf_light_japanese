###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Title Game Start
title @a times 5 40 20
execute if score #MWL Phase matches 80 run title @a title ["",{"text":"潜伏時間開始","color":"red","bold":true}]
execute if score #MWL Phase matches 80 run title @a subtitle ["",{"text":"Hiding Start","color":"white","bold":true}]
execute if score #MWL Phase matches 10 run title @a title ["",{"text":"ゲーム開始","color":"red","bold":true}]
execute if score #MWL Phase matches 10 run title @a subtitle ["",{"text":"Game Start","color":"white","bold":true}]

## Set scoreboard
scoreboard players set #MWL MasonPair 1

## Display Breakdown of Roles & His Role
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light v.1.5","color":"red","bold":true}]
execute if score #MWL Phase matches 80 run tellraw @a ["",{"text":"  - ","color":"white"},{"text":"Hiding Start","color":"green","bold":true}]
execute if score #MWL Phase matches 10 run tellraw @a ["",{"text":"  - ","color":"white"},{"text":"Game Start","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"white"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}}]

tellraw @a [""]
tellraw @a ["",{"text":"  ゲームモードは、 以下のとおりです。","color":"white"}]
execute if score #MWL SetDummyRole matches 0 run function mwj:system/common/message/dummyrole_not_available
execute if score #MWL SetDummyRole matches 1 run function mwj:system/common/message/dummyrole_available
execute if score #MWL GameMode matches 1 run function mwj:system/common/message/gamemode_normal_werewolf
execute if score #MWL GameMode matches 2 run function mwj:system/common/message/gamemode_two_alive
execute if score #MWL GameMode matches 3 run function mwj:system/common/message/gamemode_annihilation

tellraw @a ["",{"text":"    制限時間 : ","color":"white"},{"score":{"name":"#MWL","objective":"ChangeGameTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true}]
tellraw @a ["",{"text":"      残り時間 ","color":"white"},{"score":{"name":"#MWL","objective":"ChangeGlowTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true},{"text":" で生存者全員が発光","color":"white"}]

tellraw @a [""]
tellraw @a ["",{"text":"  役職内訳 : ","color":"white"}]
function mwj:system/common/message/set_roles

tellraw @a [""]
tellraw @a ["",{"text":"  特殊アイテム内訳 : ","color":"white"}]
function mwj:system/common/message/set_items

execute if score #MWL Phase matches 10 run tellraw @a [""]
execute if score #MWL Phase matches 10 run tellraw @a ["",{"text":"  あなたの役職 : ","color":"white"}]
execute if score #MWL Phase matches 10 run function mwj:system/ongame/settings/tell_roles/main
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]
