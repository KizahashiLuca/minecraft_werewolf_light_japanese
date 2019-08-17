###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Title Game Start
title @a times 5 40 20
title @a title ["",{"text":"Werewolf","color":"red","bold":true}]
title @a subtitle ["",{"text":"START","color":"white","bold":true}]

## Display Breakdown of Roles & His Role
tellraw @a ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Start!!","color":"green"},{"text":"\n  ゲームの詳しいルールなどは、","color":"reset"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}},{"text":"をご覧ください。\n  人数の内訳は以下のとおりです。","color":"reset"}]
execute if score Time VILLAGER matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"村    人","color":"green"},{"text":"： ","color":"reset"},{"score":{"name":"Time","objective":"VILLAGER"},"color":"reset"},{"text":"人","color":"reset"}]
execute if score Time SEER matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"預 言 者","color":"aqua"},{"text":"： ","color":"reset"},{"score":{"name":"Time","objective":"SEER"},"color":"reset"},{"text":"人","color":"reset"}]
execute if score Time MEDIUM matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"霊 媒 師","color":"yellow"},{"text":"： ","color":"reset"},{"score":{"name":"Time","objective":"MEDIUM"},"color":"reset"},{"text":"人","color":"reset"}]
execute if score Time MASON matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"共 有 者","color":"dark_green"},{"text":"： ","color":"reset"},{"score":{"name":"Time","objective":"MASON"},"color":"reset"},{"text":"人","color":"reset"}]
execute if score Time DETECTIVE matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"探    偵","color":"dark_aqua"},{"text":"： ","color":"reset"},{"score":{"name":"Time","objective":"DETECTIVE"},"color":"reset"},{"text":"人","color":"reset"}]
execute if score Time CAT matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"猫    又","color":"gold"},{"text":"： ","color":"reset"},{"score":{"name":"Time","objective":"CAT"},"color":"reset"},{"text":"人","color":"reset"}]
execute if score Time WOLF matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"人    狼","color":"red"},{"text":"： ","color":"reset"},{"score":{"name":"Time","objective":"WOLF"},"color":"reset"},{"text":"人","color":"reset"}]
execute if score Time MADMAN matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"狂    人","color":"light_purple"},{"text":"： ","color":"reset"},{"score":{"name":"Time","objective":"MADMAN"},"color":"reset"},{"text":"人","color":"reset"}]

tellraw @a[scores={ROLE=1}] ["",{"text":"\n    あなたは ","color":"reset"},{"text":"人狼","color":"red"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=1}] ["",{"text":"\n    仲間は ","color":"reset"},{"selector":"@a[scores={ROLE=1}]","color":"red"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=2}] ["",{"text":"\n    あなたは ","color":"reset"},{"text":"狂人","color":"light_purple"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=4}] ["",{"text":"\n    あなたは ","color":"reset"},{"text":"村人","color":"green"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=5}] ["",{"text":"\n    あなたは ","color":"reset"},{"text":"預言者","color":"aqua"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=6}] ["",{"text":"\n    あなたは ","color":"reset"},{"text":"霊媒師","color":"yellow"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=7}] ["",{"text":"\n    あなたは ","color":"reset"},{"text":"共有者","color":"dark_green"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=7}] ["",{"text":"\n    仲間は ","color":"reset"},{"selector":"@a[scores={ROLE=7}]","color":"dark_green"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=8}] ["",{"text":"\n    あなたは ","color":"reset"},{"text":"探偵","color":"dark_aqua"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=10}] ["",{"text":"\n    あなたは ","color":"reset"},{"text":"猫又","color":"gold"},{"text":" です。","color":"reset"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"reset"}]

## Count a Amount of Roles
execute as @a[scores={ROLE=4..9}] run scoreboard players add Time WHITE 1
execute as @a[scores={ROLE=1}] run scoreboard players add Time BLACK 1

## Put a Tag
tag @a[scores={ROLE=1..2}] add WereWolf
tag @a[scores={ROLE=3..9}] add NonWolf
tag @a[scores={ROLE=10}] add Cat

## Set the Time Limit
scoreboard players set Time Limit 60
scoreboard players operation Time Limit *= Time ChangeLimitTime
scoreboard objectives setdisplay sidebar Limit

## Game Start
scoreboard players set Time GAME 11