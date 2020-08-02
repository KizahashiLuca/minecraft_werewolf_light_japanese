###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Title Hiding Start
title @a times 5 40 15
title @a title ["",{"text":"潜伏時間開始","color":"red","bold":true}]
title @a subtitle ["",{"text":"Hiding Start","color":"white","bold":true}]

## Send a Message Added Role to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light v.1.2","color":"red","bold":true}]
tellraw @a ["",{"text":" - ","color":"white"},{"text":"Hiding Start","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"white"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}},{"text":"\n","color":"white"}]

tellraw @a ["",{"text":"  ゲームモードは、 以下のとおりです。","color":"white"}]
execute if score #MWL GameMode matches 1 run tellraw @a ["",{"text":"    勝敗判定 : ","color":"white"},{"text":"通常人狼モード","color":"green","bold":true}]
execute if score #MWL GameMode matches 1 run tellraw @a ["",{"text":"      村人陣営の人数が、人狼の人数以下に\n      なったら、人狼陣営の勝利です。","color":"white"}]
execute if score #MWL GameMode matches 2 run tellraw @a ["",{"text":"    勝敗判定 : ","color":"white"},{"text":"村人2人生存モード","color":"green","bold":true}]
execute if score #MWL GameMode matches 2 run tellraw @a ["",{"text":"      村人陣営の人数が、2人未満になったら、\n      人狼陣営の勝利です。","color":"white"}]
execute if score #MWL GameMode matches 3 run tellraw @a ["",{"text":"    勝敗判定 : ","color":"white"},{"text":"殲滅モード","color":"green","bold":true}]
execute if score #MWL GameMode matches 3 run tellraw @a ["",{"text":"      村人陣営の人数が、0人になったら、\n      人狼陣営の勝利です。","color":"white"}]
tellraw @a ["",{"text":"    潜伏時間 : ","color":"white"},{"score":{"name":"#MWL","objective":"ChangeHideTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}]
tellraw @a ["",{"text":"    制限時間 : ","color":"white"},{"score":{"name":"#MWL","objective":"ChangeGameTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true}]
tellraw @a ["",{"text":"      残り時間 ","color":"white"},{"score":{"name":"#MWL","objective":"ChangeGlowTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true},{"text":" で生存者全員が発光","color":"white"}]

execute if score #MWL AddedRole matches 1.. run tellraw @a ["",{"text":"\n  追加役職は、以下のとおりです。","color":"white"}]
execute if score #MWL AddedRole matches ..0 run tellraw @a ["",{"text":"\n  追加役職は、選択できません。","color":"white"}]

execute if score #MWL AddedWolf matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"人    狼","color":"red","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedWolf"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedMadman matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂    人","color":"light_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedMadman"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedFox matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"羽 衣 狐","color":"dark_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedFox"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedVilla matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedVilla"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedSeer matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"予 言 者","color":"aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedSeer"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedMedium matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"霊 媒 師","color":"yellow","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedMedium"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedMason matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedMason"},"color":"white"},{"text":"組","color":"white"}]
execute if score #MWL AddedDetec matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedDetec"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedThief matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"怪    盗","color":"blue","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedThief"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedCat matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"猫    又","color":"gold","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedCat"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedFkSeer matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"偽予言者","color":"aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedFkSeer"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedSage matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"賢    者","color":"aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedSage"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedWhWolf matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"白    狼","color":"red","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedWhWolf"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedFanatic matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂 信 者","color":"light_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedFanatic"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedImmoral matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"背 徳 者","color":"dark_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedImmoral"},"color":"white"},{"text":"人","color":"white"}]

tellraw @a ["",{"text":"  追加アイテムは、以下のとおりです。","color":"white"}]
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
execute if score #MWL AddedStick matches 0 if score #MWL AddedTotem matches 0 if score #MWL AddedDeath matches 0 if score #MWL AddedPearl matches 0 if score #MWL AddedHoe matches 0 if score #MWL AddedElytra matches 0 if score #MWL AddedSnowball matches 0 if score #MWL AddedInvis matches 0 if score #MWL AddedSpeed matches 0 if score #MWL AddedJump matches 0 if score #MWL AddedTrident matches 0 if score #MWL AddedConduit matches 0 if score #MWL AddedCrossbow matches 0 if score #MWL AddedHoneyBlock matches 0 if score #MWL AddedLantern matches 0 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"・無し","color":"white","bold":true}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Reset Scoreboard
scoreboard players set #MWL Tick 0
scoreboard players operation #MWL Second = #MWL ChangeHideTime
scoreboard players set #MWL Phase 10

## Set bossbar
bossbar set minecraft:bossbar name [{"text":"潜伏時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #MWL ChangeHideTime
execute store result bossbar minecraft:bossbar value run scoreboard players get #MWL Second