###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Send a Message Added Item to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  追加アイテムは、 ","color":"white"}]
execute if score Time AddedStick matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・木の棒","color":"white","bold":true}]
execute if score Time AddedTotem matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・不死のトーテム","color":"white","bold":true}]
execute if score Time AddedDeath2 matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・即死の残留ポーション","color":"white","bold":true}]
execute if score Time AddedPearl matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・エンダーパール","color":"white","bold":true}]
execute if score Time AddedHoe matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・ダイヤのクワ","color":"white","bold":true}]
execute if score Time AddedElytra matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・エリトラ","color":"white","bold":true}]
execute if score Time AddedSnowball matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・フラッシュバン","color":"white","bold":true}]
execute if score Time AddedInvis matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・透明化のポーション","color":"white","bold":true}]
execute if score Time AddedSpeed matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・俊敏のポーション","color":"white","bold":true}]
execute if score Time AddedJump matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・跳躍のポーション","color":"white","bold":true}]
execute if score Time AddedTrident matches 1 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・トライデント","color":"white","bold":true}]
execute if score Time AddedConduit matches 1 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・コンカッション地雷","color":"white","bold":true}]
execute if score Time AddedCrossbow matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・クロスボウ","color":"white","bold":true}]
execute if score Time AddedHoneyBlock matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・スティッキー地雷","color":"white","bold":true}]
execute if score Time AddedLantern matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・テレポーター","color":"white","bold":true}]
execute if score Time AddedStick matches 0 if score Time AddedTotem matches 0 if score Time AddedDeath2 matches 0 if score Time AddedPearl matches 0 if score Time AddedHoe matches 0 if score Time AddedElytra matches 0 if score Time AddedSnowball matches 0 if score Time AddedInvis matches 0 if score Time AddedSpeed matches 0 if score Time AddedJump matches 0 if score Time AddedTrident matches 0 if score Time AddedConduit matches 0 if score Time AddedCrossbow matches 0 if score Time AddedHoneyBlock matches 0 if score Time AddedLantern matches 0 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"無し","color":"white","bold":true}]
tellraw @a ["",{"text":"  に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Change to Choose Mode
function mwj:system/setting/decision_item_addition1/set_added
function mwj:system/setting/choose_mode/change_to_choose_mode