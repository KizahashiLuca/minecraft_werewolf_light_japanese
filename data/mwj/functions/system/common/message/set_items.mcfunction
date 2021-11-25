####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send message
execute if score #MWL ChooseStick matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・木の棒","color":"white","bold":true}]
execute if score #MWL ChooseTotem matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・不死のトーテム","color":"white","bold":true}]
execute if score #MWL ChooseDeathPot matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・即死の残留ポーション","color":"white","bold":true}]
execute if score #MWL ChoosePearl matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・エンダーパール","color":"white","bold":true}]
execute if score #MWL ChooseHoe matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・ダイヤのクワ","color":"white","bold":true}]
execute if score #MWL ChooseElytra matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・エリトラ","color":"white","bold":true}]
execute if score #MWL ChooseSnowball matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・フラッシュバン","color":"white","bold":true}]
execute if score #MWL ChooseInvisPot matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・透明化のポーション","color":"white","bold":true}]
execute if score #MWL ChooseSpeedPot matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・俊敏のポーション","color":"white","bold":true}]
execute if score #MWL ChooseJumpPot matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・跳躍のポーション","color":"white","bold":true}]
execute if score #MWL ChooseTrident matches 1 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・トライデント","color":"white","bold":true}]
execute if score #MWL ChooseConduit matches 1 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・コンカッション地雷","color":"white","bold":true}]
execute if score #MWL ChooseCrossbow matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・クロスボウ","color":"white","bold":true}]
execute if score #MWL ChooseHoneyBlock matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・スティッキー地雷","color":"white","bold":true}]
execute if score #MWL ChooseLantern matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・テレポーター","color":"white","bold":true}]
execute if score #MWL ChooseVines matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・ねじれツタ","color":"white","bold":true}]
execute if score #MWL ChooseSpyglass matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・望遠鏡","color":"white","bold":true}]
execute if score #MWL ChooseStick matches 0 if score #MWL ChooseTotem matches 0 if score #MWL ChooseDeathPot matches 0 if score #MWL ChoosePearl matches 0 if score #MWL ChooseHoe matches 0 if score #MWL ChooseElytra matches 0 if score #MWL ChooseSnowball matches 0 if score #MWL ChooseInvisPot matches 0 if score #MWL ChooseSpeedPot matches 0 if score #MWL ChooseJumpPot matches 0 if score #MWL ChooseTrident matches 0 if score #MWL ChooseConduit matches 0 if score #MWL ChooseCrossbow matches 0 if score #MWL ChooseHoneyBlock matches 0 if score #MWL ChooseLantern matches 0 if score #MWL ChooseVines matches 0 if score #MWL ChooseSpyglass matches 0 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"無し","color":"white","bold":true}]