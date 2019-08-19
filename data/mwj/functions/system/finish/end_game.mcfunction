###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Display a Breakdown of Roles
tellraw @a ["",{"text":"  役職の内訳は以下のとおりでした。","color":"reset"}]
execute if score Time VILLAGER matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"村    人","color":"green"},{"text":"： ","color":"reset"},{"selector":"@a[scores={ROLE=4}]","color":"reset"}]
execute if score Time SEER matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"預 言 者","color":"aqua"},{"text":"： ","color":"reset"},{"selector":"@a[scores={ROLE=5}]","color":"reset"}]
execute if score Time MEDIUM matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"霊 媒 師","color":"yellow"},{"text":"： ","color":"reset"},{"selector":"@a[scores={ROLE=6}]","color":"reset"}]
execute if score Time MASON matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"共 有 者","color":"dark_green"},{"text":"： ","color":"reset"},{"selector":"@a[scores={ROLE=7}]","color":"reset"}]
execute if score Time DETECTIVE matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"探    偵","color":"dark_aqua"},{"text":"： ","color":"reset"},{"selector":"@a[scores={ROLE=8}]","color":"reset"}]
execute if score Time CAT matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"猫    又","color":"gold"},{"text":"： ","color":"reset"},{"selector":"@a[scores={ROLE=10}]","color":"reset"}]
execute if score Time WOLF matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"人    狼","color":"red"},{"text":"： ","color":"reset"},{"selector":"@a[scores={ROLE=1}]","color":"reset"}]
execute if score Time MADMAN matches 1.. run tellraw @a ["",{"text":"    ","color":"reset"},{"text":"狂    人","color":"light_purple"},{"text":"： ","color":"reset"},{"selector":"@a[scores={ROLE=2}]","color":"reset"}]

tellraw @a ["",{"text":"\n    ","color":"reset"},{"text":"生 存 者","color":"reset"},{"text":"： ","color":"reset"},{"selector":"@a[scores={DEATH=0}]","color":"reset"}]
tellraw @a ["",{"text":"----------------------------------","color":"reset"}]

## Display a Kill Log
tellraw @a ["",{"text":"  死亡記録","color":"reset"}] 
scoreboard players set Time KILLER 1
execute as @a run function mwj:system/ongame/kill_log/kill_log_to_chat
tellraw @a ["",{"text":"----------------------------------\n","color":"reset"}]

## Remove Objectives
scoreboard objectives remove WOLF
scoreboard objectives remove MADMAN
scoreboard objectives remove VILLAGER
scoreboard objectives remove SEER
scoreboard objectives remove MEDIUM
scoreboard objectives remove CAT
scoreboard objectives remove MASON
scoreboard objectives remove DETECTIVE

## Quit Game
function mwj:system/finish/quit_game
