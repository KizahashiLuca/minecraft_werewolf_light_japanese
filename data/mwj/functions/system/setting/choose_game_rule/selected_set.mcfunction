####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Message Game Rule to All Players
tellraw @a [""]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  以下のように設定されました。","color":"white"}]
execute if score #MWL GameMode matches 1 run tellraw @a ["",{"text":"    人狼勝利条件 : ","color":"white"},{"text":"通常人狼モード","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","contents":["",{"text":"村人陣営の人数が人狼の人数以下","color":"white","bold":true,"italic":false},{"text":"となれば人狼陣営の勝利。","color":"white","bold":false,"italic":false}]}}]
execute if score #MWL GameMode matches 2 run tellraw @a ["",{"text":"    人狼勝利条件 : ","color":"white"},{"text":"村人2人生存モード","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","contents":["",{"text":"村人陣営の人数が２人以下","color":"white","bold":true,"italic":false},{"text":"となれば人狼陣営の勝利。","color":"white","bold":false,"italic":false}]}}]
execute if score #MWL GameMode matches 3 run tellraw @a ["",{"text":"    人狼勝利条件 : ","color":"white"},{"text":"殲滅モード","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","contents":["",{"text":"村人陣営が全滅","color":"white","bold":true,"italic":false},{"text":"となれば人狼陣営の勝利。","color":"white","bold":false,"italic":false}]}}]
execute if score #MWL DummyRoleMode matches 0 run tellraw @a ["",{"text":"    役欠け設定   : ","color":"white"},{"text":"なし","color":"red","bold":true}]
execute if score #MWL DummyRoleMode matches 1 run tellraw @a ["",{"text":"    役欠け設定   : ","color":"white"},{"text":"あり","color":"green","bold":true}]
execute if score #MWL 2ndRoleMode matches 0 run tellraw @a ["",{"text":"    二次役職設定 : ","color":"white"},{"text":"なし","color":"red","bold":true}]
execute if score #MWL 2ndRoleMode matches 1 run tellraw @a ["",{"text":"    二次役職設定 : ","color":"white"},{"text":"地縛霊","color":"dark_purple","bold":true}]
execute if score #MWL 2ndRoleMode matches 2 run tellraw @a ["",{"text":"    二次役職設定 : ","color":"white"},{"text":"酔っ払い","color":"green","bold":true}]
execute if score #MWL DummyRoleMode matches 0 run tellraw @a ["",{"text":"  現在参加者は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" です。","color":"white"}]
execute if score #MWL DummyRoleMode matches 1 run tellraw @a ["",{"text":"  現在参加者は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" で、役職数は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfRoles"},"color":"green","bold":true},{"text":"役","color":"green","bold":true},{"text":" です。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a [""]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to