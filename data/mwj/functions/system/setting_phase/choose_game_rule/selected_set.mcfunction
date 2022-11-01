####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send messages
tellraw @a [""]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  以下のように設定されました。","color":"white"}]
tellraw @a[predicate=mwj:game_rule/gamemode_normal] ["",{"text":"    人狼勝利条件 : ","color":"white"},{"text":"通常人狼モード","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","contents":["",{"text":"村人陣営の人数が人狼の人数以下","color":"white","bold":true,"italic":false},{"text":"となれば人狼陣営の勝利。","color":"white","bold":false,"italic":false}]}}]
tellraw @a[predicate=mwj:game_rule/gamemode_two_alive] ["",{"text":"    人狼勝利条件 : ","color":"white"},{"text":"村人2人生存モード","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","contents":["",{"text":"村人陣営の人数が２人以下","color":"white","bold":true,"italic":false},{"text":"となれば人狼陣営の勝利。","color":"white","bold":false,"italic":false}]}}]
tellraw @a[predicate=mwj:game_rule/gamemode_annihilation] ["",{"text":"    人狼勝利条件 : ","color":"white"},{"text":"殲滅モード","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","contents":["",{"text":"村人陣営が全滅","color":"white","bold":true,"italic":false},{"text":"となれば人狼陣営の勝利。","color":"white","bold":false,"italic":false}]}}]
tellraw @a[predicate=mwj:game_rule/dummyrole_none] ["",{"text":"    役欠け設定   : ","color":"white"},{"text":"なし","color":"red","bold":true}]
tellraw @a[predicate=mwj:game_rule/dummyrole_exist] ["",{"text":"    役欠け設定   : ","color":"white"},{"text":"あり","color":"green","bold":true}]
tellraw @a[predicate=mwj:game_rule/secondrole_none] ["",{"text":"    二次役職設定 : ","color":"white"},{"text":"なし","color":"red","bold":true}]
tellraw @a[predicate=mwj:game_rule/secondrole_ghost] ["",{"text":"    二次役職設定 : ","color":"white"},{"text":"地縛霊","color":"dark_purple","bold":true}]
tellraw @a[predicate=mwj:game_rule/secondrole_drunk] ["",{"text":"    二次役職設定 : ","color":"white"},{"text":"酔っ払い","color":"green","bold":true}]
tellraw @a[predicate=mwj:game_rule/dummyrole_none] ["",{"text":"  現在参加者は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" です。","color":"white"}]
tellraw @a[predicate=mwj:game_rule/dummyrole_exist] ["",{"text":"  現在参加者は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" で、役職数は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfRoles"},"color":"green","bold":true},{"text":"役","color":"green","bold":true},{"text":" です。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a [""]

## Change to master
function mwj:system/setting_phase/master/change_to