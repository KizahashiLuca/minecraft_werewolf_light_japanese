###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Title Game Start
title @a times 5 40 20
title @a title ["",{"text":"Werewolf","color":"red","bold":true}]
title @a subtitle ["",{"text":"START","color":"white","bold":true}]

## Set scoreboard
scoreboard players set #MWL MasonPair 1

## Display Breakdown of Roles & His Role
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light v.1.4.1","color":"red","bold":true}]
tellraw @a ["",{"text":"                  ","color":"white"},{"text":"Game Start","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"white"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}},{"text":"\n","color":"white"}]

tellraw @a ["",{"text":"  ゲームモードは、 以下のとおりです。","color":"white"}]
execute if score #MWL SetDummyRole matches 0 run tellraw @a ["",{"text":"    役職欠け : ","color":"white"},{"text":"なし","color":"green","bold":true}]
execute if score #MWL SetDummyRole matches 0 run tellraw @a ["",{"text":"    参加者数 : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true}]
execute if score #MWL SetDummyRole matches 1 run tellraw @a ["",{"text":"    役職欠け : ","color":"white"},{"text":"あり","color":"green","bold":true}]
execute if score #MWL SetDummyRole matches 1 run tellraw @a ["",{"text":"    参加者数 : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" (役職数 : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfRoles"},"color":"green","bold":true},{"text":"役","color":"green","bold":true},{"text":")","color":"white"}]
execute if score #MWL GameMode matches 1 run tellraw @a ["",{"text":"    勝敗判定 : ","color":"white"},{"text":"通常人狼モード","color":"green","bold":true}]
execute if score #MWL GameMode matches 2 run tellraw @a ["",{"text":"    勝敗判定 : ","color":"white"},{"text":"村人2人生存モード","color":"green","bold":true}]
execute if score #MWL GameMode matches 3 run tellraw @a ["",{"text":"    勝敗判定 : ","color":"white"},{"text":"殲滅モード","color":"green","bold":true}]
execute if score #MWL GameMode matches 1 run tellraw @a ["",{"text":"       村人陣営の人数が、人狼の人数以下に\n       なったら、人狼陣営の勝利です。","color":"white"}]
execute if score #MWL GameMode matches 2 run tellraw @a ["",{"text":"       村人陣営の人数が、2人未満になったら、\n       人狼陣営の勝利です。","color":"white"}]
execute if score #MWL GameMode matches 3 run tellraw @a ["",{"text":"       村人陣営の人数が、0人になったら、\n       人狼陣営の勝利です。","color":"white"}]
tellraw @a ["",{"text":"    制限時間 : ","color":"white"},{"score":{"name":"#MWL","objective":"ChangeGameTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true}]
tellraw @a ["",{"text":"       残り時間 ","color":"white"},{"score":{"name":"#MWL","objective":"ChangeGlowTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true},{"text":" で生存者全員が発光","color":"white"}]

tellraw @a ["",{"text":"\n  役職内訳 : ","color":"white"}]
execute if score #MWL NumOfVillagers matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfVillagers"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfSeers matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"予 言 者","color":"aqua"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfSeers"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfFkSeers matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"偽予言者","color":"aqua"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfFkSeers"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfSages matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"賢    者","color":"aqua"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfSages"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfMediums matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"霊 媒 師","color":"yellow"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfMediums"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfMasons matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfMasons"},"color":"white"},{"text":"人 - ","color":"white"},{"score":{"name":"#MWL","objective":"AddedMason"},"color":"white"},{"text":"組","color":"white"}]
execute if score #MWL NumOfDetectives matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfDetectives"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfThieves matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"怪    盗","color":"blue"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfThieves"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfCats matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"猫    又","color":"gold"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfCats"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfWolves matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"人    狼","color":"red"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfWolves"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfWhWolves matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"白    狼","color":"red"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfWhWolves"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfMadmans matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂    人","color":"light_purple"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfMadmans"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfFanatics matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂 信 者","color":"light_purple"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfFanatics"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfFoxes matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"羽 衣 狐","color":"dark_purple"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfFoxes"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfImmorals matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"背 徳 者","color":"dark_purple"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfImmorals"},"color":"white"},{"text":"人","color":"white"}]

tellraw @a[scores={CurrentRole=1}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"人狼","color":"red"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=4}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"白狼","color":"red"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=1..4}] ["",{"text":"    仲間は ","color":"white"},{"selector":"@a[scores={CurrentRole=1..4}]","color":"red"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=5}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"狂人","color":"light_purple"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=6}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"狂信者","color":"light_purple"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=6}] ["",{"text":"    人狼は ","color":"white"},{"selector":"@a[scores={CurrentRole=1..4}]","color":"red"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=10}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"羽衣狐","color":"dark_purple"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=11}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"背徳者","color":"dark_purple"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=11}] ["",{"text":"    羽衣狐は ","color":"white"},{"selector":"@a[scores={CurrentRole=10}]","color":"dark_purple"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=20}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"村人","color":"green"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=21}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"共有者","color":"dark_green"},{"text":" です。","color":"white"}]
execute as @a[scores={CurrentRole=21}] run function mwj:system/ongame/mason/tell_pair
tellraw @a[scores={CurrentRole=25..26}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"予言者","color":"aqua"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=27}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"賢者","color":"aqua"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=28}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"霊媒師","color":"yellow"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=31}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"探偵","color":"dark_aqua"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=35}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"怪盗","color":"blue"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=39}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"赤ずきん","color":"gold"},{"text":" です。","color":"white"}]
tellraw @a[scores={CurrentRole=40}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"猫又","color":"gold"},{"text":" です。","color":"white"}]
tellraw @a[team=!Player] ["",{"text":"\n    あなたは ","color":"white"},{"text":"観戦者","color":"white"},{"text":" です。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]
