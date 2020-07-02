###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Send a Display of Breakdown of Roles
tellraw @a ["",{"text":"  役職の内訳は以下のとおりでした。","color":"white"}]
execute if score #MWL NumOfVillagers matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PREV_ROLE=4}]","color":"white"}]
execute if score #MWL NumOfSeers matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"預 言 者","color":"aqua"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PREV_ROLE=5}]","color":"white"}]
execute if score #MWL NumOfMediums matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"霊 媒 師","color":"yellow"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PREV_ROLE=6}]","color":"white"}]
execute if score #MWL NumOfMasons matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PREV_ROLE=7}]","color":"white"}]
execute if score #MWL NumOfDetectives matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PREV_ROLE=8}]","color":"white"}]
execute if score #MWL NumOfThieves matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"怪    盗","color":"blue"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PREV_ROLE=9}]","color":"white"}]
execute if score #MWL NumOfCats matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"猫    又","color":"gold"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PREV_ROLE=10}]","color":"white"}]
execute if score #MWL NumOfWolves matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"人    狼","color":"red"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PREV_ROLE=1}]","color":"white"}]
execute if score #MWL NumOfMadmans matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂    人","color":"light_purple"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PREV_ROLE=2}]","color":"white"}]
execute if score #MWL NumOfFoxes matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"羽 衣 狐","color":"dark_purple"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PREV_ROLE=3}]","color":"white"}]

## Send a Display of Survivors
tellraw @a ["",{"text":"\n    ","color":"white"},{"text":"生 存 者","color":"white"},{"text":" ： ","color":"white"},{"selector":"@a[scores={DEATH=0},team=Player]","color":"white"}]

## Send a Thief Log
scoreboard players set #MWL DENOMINATOR 5
scoreboard players set #MWL STEAL_NUM 1
execute if score #MWL NumOfThieves matches 1.. run tellraw @a ["",{"text":"----------------------------------","color":"white"}]
execute if score #MWL NumOfThieves matches 1.. run tellraw @a ["",{"text":"  怪盗記録","color":"white"}]
execute if score #MWL NumOfThieves matches 1.. run function mwj:system/finish/thief_log

## Send a Common Message
tellraw @a ["",{"text":"----------------------------------","color":"white"}]

## Send a Kill Log
tellraw @a ["",{"text":"  死亡記録","color":"white"}]
scoreboard players operation #MWL KILLER_NUM = #MWL KILLLOG_NUM
scoreboard players set #MWL KILLLOG_NUM 1
scoreboard players set #MWL DENOMINATOR 5
scoreboard players operation #MWL Tick *= #MWL DENOMINATOR

## Send a Game Begin Log
execute if score #MWL ChangeGameTime matches 1000.. run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"#MWL","objective":"ChangeGameTime"},"color":"white"},{"text":".00 sec.  :  ゲーム開始","color":"white"}]
execute if score #MWL ChangeGameTime matches 100..999 run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"#MWL","objective":"ChangeGameTime"},"color":"white"},{"text":".00 sec.  :  ゲーム開始","color":"white"}]

## Send a Kill Log
function mwj:system/finish/kill_log

## Send a Game Finish Log
## 1000 sec. -
execute if score #MWL Second matches 1000.. if score #MWL Tick matches 0..5 run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]
execute if score #MWL Second matches 1000.. unless score #MWL Tick matches 0..5 run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]

## 100 sec. - 999 sec.
execute if score #MWL Second matches 100..999 if score #MWL Tick matches 0..5 run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]
execute if score #MWL Second matches 100..999 unless score #MWL Tick matches 0..5 run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]

## 10 sec. - 99 sec.
execute if score #MWL Second matches 10..99 if score #MWL Tick matches 0..5 run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]
execute if score #MWL Second matches 10..99 unless score #MWL Tick matches 0..5 run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]

## 0 sec. - 9.sec.
execute if score #MWL Second matches 0..9 if score #MWL Tick matches 0..5 run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]
execute if score #MWL Second matches 0..9 unless score #MWL Tick matches 0..5 run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]

## Quit Game
function mwj:system/finish/exit_game
