####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Display of Breakdown of Roles
tellraw @a ["",{"text":"  役職の内訳は以下のとおりでした。","color":"white"}]
execute if score #MWL NumOfWolves matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"人    狼","color":"red"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=1}]","color":"white"}]
execute if score #MWL NumOfClWolves matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"賢    狼","color":"dark_red"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=3}]","color":"white"}]
execute if score #MWL NumOfWhWolves matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"白    狼","color":"red"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=4}]","color":"white"}]
execute if score #MWL NumOfMadmans matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂    人","color":"light_purple"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=5}]","color":"white"}]
execute if score #MWL NumOfFanatics matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂 信 者","color":"light_purple"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=6}]","color":"white"}]
execute if score #MWL NumOfFoxes matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"羽 衣 狐","color":"dark_purple"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=10}]","color":"white"}]
execute if score #MWL NumOfImmorals matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"背 徳 者","color":"dark_purple"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=11}]","color":"white"}]
execute if score #MWL NumOfVillagers matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=20}]","color":"white"}]
execute if score #MWL NumOfMasons matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=21}]","color":"white"}]
execute if score #MWL NumOfBakeries matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"パ ン 屋","color":"green"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=22}]","color":"white"}]
execute if score #MWL NumOfSeers matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"予 言 者","color":"aqua"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=25}]","color":"white"}]
execute if score #MWL NumOfFkSeers matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"偽予言者","color":"aqua"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=26}]","color":"white"}]
execute if score #MWL NumOfSages matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"賢    者","color":"aqua"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=27}]","color":"white"}]
execute if score #MWL NumOfMediums matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"霊 媒 師","color":"yellow"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=28}]","color":"white"}]
execute if score #MWL NumOfDetectives matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=31}]","color":"white"}]
execute if score #MWL NumOfThieves matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"怪    盗","color":"blue"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=35}]","color":"white"}]
execute if score #MWL NumOfLtReds matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"赤ずきん","color":"gold"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=39}]","color":"white"}]
execute if score #MWL NumOfCats matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"猫    又","color":"gold"},{"text":" ： ","color":"white"},{"selector":"@a[scores={PrevRole=40}]","color":"white"}]

## Send a display of dummy role
execute if score #MWL SetDummyRole matches 1 run tellraw @a ["",{"text":"  役職欠けは以下の役職でした。","color":"white"}]
execute if score #MWL DummyRole matches 1 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂    人","color":"light_purple"},{"text":" ： 1人","color":"white"}]
execute if score #MWL DummyRole matches 2 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂 信 者","color":"light_purple"},{"text":" ： 1人","color":"white"}]
execute if score #MWL DummyRole matches 3 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"背 徳 者","color":"dark_purple"},{"text":" ： 1人","color":"white"}]
execute if score #MWL DummyRole matches 4 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green"},{"text":" ： 1人","color":"white"}]
execute if score #MWL DummyRole matches 5 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green"},{"text":" ： 1人","color":"white"}]
execute if score #MWL DummyRole matches 6 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"パ ン 屋","color":"green"},{"text":" ： 1人","color":"white"}]
execute if score #MWL DummyRole matches 7 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"予 言 者","color":"aqua"},{"text":" ： 1人","color":"white"}]
execute if score #MWL DummyRole matches 8 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"偽予言者","color":"aqua"},{"text":" ： 1人","color":"white"}]
execute if score #MWL DummyRole matches 9 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"賢    者","color":"aqua"},{"text":" ： 1人","color":"white"}]
execute if score #MWL DummyRole matches 10 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"霊 媒 師","color":"yellow"},{"text":" ： 1人","color":"white"}]
execute if score #MWL DummyRole matches 11 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua"},{"text":" ： 1人","color":"white"}]
execute if score #MWL DummyRole matches 12 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"怪    盗","color":"blue"},{"text":" ： 1人","color":"white"}]
execute if score #MWL DummyRole matches 13 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"赤ずきん","color":"gold"},{"text":" ： 1人","color":"white"}]

## Send a Display of Survivors
tellraw @a [""]
tellraw @a ["",{"text":"    ","color":"white"},{"text":"生 存 者","color":"white"},{"text":" ： ","color":"white"},{"selector":"@a[scores={DeathCount=0},team=Player]","color":"white"}]

## Send a Thief Log
scoreboard players set #MWL TempVariable 5
scoreboard players set #MWL NumberOfStolen 1
execute if score #MWL NumOfThieves matches 1.. run tellraw @a ["",{"text":"----------------------------------","color":"white"}]
execute if score #MWL NumOfThieves matches 1.. run tellraw @a ["",{"text":"  怪盗記録","color":"white"}]
execute if score #MWL NumOfThieves matches 1.. run function mwj:system/finish/thief_log

## Send a Common Message
tellraw @a ["",{"text":"----------------------------------","color":"white"}]

## Send a Kill Log
tellraw @a ["",{"text":"  死亡記録","color":"white"}]
scoreboard players operation #MWL CountOfKiller = #MWL NumberOfKillLog
scoreboard players set #MWL NumberOfKillLog 1
scoreboard players set #MWL TempVariable 5
scoreboard players operation #MWL Tick *= #MWL TempVariable

## Send a Game Begin Log
execute if score #MWL SetGameTime matches 1000.. run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"#MWL","objective":"SetGameTime"},"color":"white"},{"text":".00 sec.  :  ゲーム開始","color":"white"}]
execute if score #MWL SetGameTime matches 100..999 run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"#MWL","objective":"SetGameTime"},"color":"white"},{"text":".00 sec.  :  ゲーム開始","color":"white"}]

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
