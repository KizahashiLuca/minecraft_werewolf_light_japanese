###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Title Game Start
title @a times 5 40 20
title @a title ["",{"text":"Werewolf","color":"red","bold":true}]
title @a subtitle ["",{"text":"START","color":"white","bold":true}]

## Display Breakdown of Roles & His Role
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"white"},{"text":"Start!!","color":"green"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"white"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}},{"text":"をご覧ください。","color":"white"}]
tellraw @a ["",{"text":"  人数の内訳は以下のとおりです。","color":"white"}]
execute if score Time VILLAGER matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green"},{"text":" ： ","color":"white"},{"score":{"name":"Time","objective":"VILLAGER"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time SEER matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"預 言 者","color":"aqua"},{"text":" ： ","color":"white"},{"score":{"name":"Time","objective":"SEER"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time MEDIUM matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"霊 媒 師","color":"yellow"},{"text":" ： ","color":"white"},{"score":{"name":"Time","objective":"MEDIUM"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time MASON matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green"},{"text":" ： ","color":"white"},{"score":{"name":"Time","objective":"MASON"},"color":"white"},{"text":"人 - ","color":"white"},{"score":{"name":"Time","objective":"MASON_PAIR_NUM"},"color":"white"},{"text":"組","color":"white"}]
execute if score Time DETECTIVE matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua"},{"text":" ： ","color":"white"},{"score":{"name":"Time","objective":"DETECTIVE"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time CAT matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"猫    又","color":"gold"},{"text":" ： ","color":"white"},{"score":{"name":"Time","objective":"CAT"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time WOLF matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"人    狼","color":"red"},{"text":"： ","color":"white"},{"score":{"name":"Time","objective":"WOLF"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time MADMAN matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂    人","color":"light_purple"},{"text":" ： ","color":"white"},{"score":{"name":"Time","objective":"MADMAN"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time FOX matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"羽 衣 狐","color":"dark_purple"},{"text":" ： ","color":"white"},{"score":{"name":"Time","objective":"FOX"},"color":"white"},{"text":"人","color":"white"}]

tellraw @a[scores={ROLE=1}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"人狼","color":"red"},{"text":" です。","color":"white"}]
tellraw @a[scores={ROLE=1}] ["",{"text":"\n    仲間は ","color":"white"},{"selector":"@a[scores={ROLE=1}]","color":"red"},{"text":" です。","color":"white"}]
tellraw @a[scores={ROLE=2}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"狂人","color":"light_purple"},{"text":" です。","color":"white"}]
tellraw @a[scores={ROLE=3}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"羽衣狐","color":"dark_purple"},{"text":" です。","color":"white"}]
tellraw @a[scores={ROLE=4}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"村人","color":"green"},{"text":" です。","color":"white"}]
tellraw @a[scores={ROLE=5}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"預言者","color":"aqua"},{"text":" です。","color":"white"}]
tellraw @a[scores={ROLE=6}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"霊媒師","color":"yellow"},{"text":" です。","color":"white"}]
tellraw @a[scores={ROLE=7}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"共有者","color":"dark_green"},{"text":" です。","color":"white"}]
function mwj:system/preparation/decision_role/mason_pair_message_main
tellraw @a[scores={ROLE=8}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"探偵","color":"dark_aqua"},{"text":" です。","color":"white"}]
tellraw @a[scores={ROLE=10}] ["",{"text":"\n    あなたは ","color":"white"},{"text":"猫又","color":"gold"},{"text":" です。","color":"white"}]
tellraw @a[team=!Player] ["",{"text":"\n    あなたは ","color":"white"},{"text":"観戦者","color":"white"},{"text":" です。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Put a Tag
tag @a[scores={ROLE=1..2}] add WereWolf
tag @a[scores={ROLE=3..9}] add NonWolf
tag @a[scores={ROLE=10}] add Cat

## Remove Effect
team modify Player friendlyFire true
effect clear @a[team=Player]