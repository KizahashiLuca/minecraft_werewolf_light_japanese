###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : Feb 11, 2019
## Version: alpha-0.1
###############################

## game title
title @a times 5 40 20
title @a title ["",{"text":"Werewolf","color":"red","bold":true}]
title @a subtitle ["",{"text":"START","color":"white","bold":true}]

## display breakdown
tellraw @a ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"Minecraft Werewolf Light","bold":true,"color":"red"},{"text":" ","color":"reset"},{"text":"Start!!","color":"green"},{"text":"\n  ゲームの詳しいルールなどは、","color":"reset"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf/wiki"}},{"text":"をご覧ください。\n  人数の内訳は以下のとおりです。","color":"reset"}]
execute if score Time VILLAGER matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"村    人","color":"green"},{"text":"： ","color":"reset"},{"score":{"name":"Time","objective":"VILLAGER"},"color":"reset"},{"text":"人","color":"reset"}]
execute if score Time SEER matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"預 言 者","color":"aqua"},{"text":"： ","color":"reset"},{"score":{"name":"Time","objective":"SEER"},"color":"reset"},{"text":"人","color":"reset"}]
execute if score Time MEDIUM matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"霊 媒 師","color":"yellow"},{"text":"： ","color":"reset"},{"score":{"name":"Time","objective":"MEDIUM"},"color":"reset"},{"text":"人","color":"reset"}]
execute if score Time WOLF matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"人    狼","color":"red"},{"text":"： ","color":"reset"},{"score":{"name":"Time","objective":"WOLF"},"color":"reset"},{"text":"人","color":"reset"}]
execute if score Time MADMAN matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"狂    人","color":"light_purple"},{"text":"： ","color":"reset"},{"score":{"name":"Time","objective":"MADMAN"},"color":"reset"},{"text":"人","color":"reset"}]

tellraw @a[scores={ROLE=1}] ["",{"text":"\n    あなたは ","color":"reset"},{"text":"人狼","color":"red"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=1}] ["",{"text":"\n    仲間は ","color":"reset"},{"selector":"@a[scores={ROLE=1}]","color":"red"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=2}] ["",{"text":"\n    あなたは ","color":"reset"},{"text":"狂人","color":"light_purple"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=4}] ["",{"text":"\n    あなたは ","color":"reset"},{"text":"村人","color":"green"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=5}] ["",{"text":"\n    あなたは ","color":"reset"},{"text":"預言者","color":"aqua"},{"text":" です。","color":"reset"}]
tellraw @a[scores={ROLE=6}] ["",{"text":"\n    あなたは ","color":"reset"},{"text":"霊媒師","color":"yellow"},{"text":" です。","color":"reset"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"reset"}]

## Amount of Roles
execute as @a[scores={ROLE=4..9}] run scoreboard players add Time WHITE 1
execute as @a[scores={ROLE=1}] run scoreboard players add Time BLACK 1

## limit time
scoreboard players set Time Limit 60
scoreboard players operation Time Limit *= Time ChangeLimitTime
scoreboard objectives setdisplay sidebar Limit

## Game Start
scoreboard players set Time GAME 1