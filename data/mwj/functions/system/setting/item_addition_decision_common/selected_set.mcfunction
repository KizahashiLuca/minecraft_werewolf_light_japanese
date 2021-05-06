####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Message Added Item to All Players
tellraw @a [""]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  追加アイテムは、 ","color":"white"}]
execute if score #MWL AddedStick matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・木の棒","color":"white","bold":true}]
execute if score #MWL AddedTotem matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・不死のトーテム","color":"white","bold":true}]
execute if score #MWL AddedDeath matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・即死の残留ポーション","color":"white","bold":true}]
execute if score #MWL AddedPearl matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・エンダーパール","color":"white","bold":true}]
execute if score #MWL AddedHoe matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・ダイヤのクワ","color":"white","bold":true}]
execute if score #MWL AddedElytra matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・エリトラ","color":"white","bold":true}]
execute if score #MWL AddedSnowball matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・フラッシュバン","color":"white","bold":true}]
execute if score #MWL AddedInvis matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・透明化のポーション","color":"white","bold":true}]
execute if score #MWL AddedSpeed matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・俊敏のポーション","color":"white","bold":true}]
execute if score #MWL AddedJump matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・跳躍のポーション","color":"white","bold":true}]
execute if score #MWL AddedTrident matches 1 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・トライデント","color":"white","bold":true}]
execute if score #MWL AddedConduit matches 1 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・コンカッション地雷","color":"white","bold":true}]
execute if score #MWL AddedCrossbow matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・クロスボウ","color":"white","bold":true}]
execute if score #MWL AddedHoneyBlock matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・スティッキー地雷","color":"white","bold":true}]
execute if score #MWL AddedLantern matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・テレポーター","color":"white","bold":true}]
execute if score #MWL AddedVines matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・ねじれツタ","color":"white","bold":true}]
# execute if score #MWL Added matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・追加アイテム","color":"white","bold":true}]
# execute if score #MWL Added matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・追加アイテム","color":"white","bold":true}]
# execute if score #MWL Added matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・追加アイテム","color":"white","bold":true}]
# execute if score #MWL Added matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・追加アイテム","color":"white","bold":true}]

execute if score #MWL AddedStick matches 0 if score #MWL AddedTotem matches 0 if score #MWL AddedDeath matches 0 if score #MWL AddedPearl matches 0 if score #MWL AddedHoe matches 0 if score #MWL AddedElytra matches 0 if score #MWL AddedSnowball matches 0 if score #MWL AddedInvis matches 0 if score #MWL AddedSpeed matches 0 if score #MWL AddedJump matches 0 if score #MWL AddedTrident matches 0 if score #MWL AddedConduit matches 0 if score #MWL AddedCrossbow matches 0 if score #MWL AddedHoneyBlock matches 0 if score #MWL AddedLantern matches 0 if score #MWL AddedVines matches 0 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"無し","color":"white","bold":true}]
tellraw @a ["",{"text":"  に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a [""]

## Change to Choose Mode
function mwj:system/setting/item_addition_decision_1/set_added
function mwj:system/setting/choose_mode/change_to