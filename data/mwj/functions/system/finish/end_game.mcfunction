####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Display of Breakdown of Roles
tellraw @a ["",{"text":"  役職の内訳は以下のとおりでした。","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/wolf] ["",{"text":"    ","color":"white"},{"text":"人    狼","color":"red"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/wolf]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/clever_wolf] ["",{"text":"    ","color":"white"},{"text":"賢    狼","color":"dark_red"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/clever_wolf]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/white_wolf] ["",{"text":"    ","color":"white"},{"text":"白    狼","color":"red"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/white_wolf]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/madman] ["",{"text":"    ","color":"white"},{"text":"狂    人","color":"light_purple"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/madman]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/fanatic] ["",{"text":"    ","color":"white"},{"text":"狂 信 者","color":"light_purple"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/fanatic]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/fox] ["",{"text":"    ","color":"white"},{"text":"羽 衣 狐","color":"dark_purple"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/fox]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/immoralist] ["",{"text":"    ","color":"white"},{"text":"背 徳 者","color":"dark_purple"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/immoralist]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/villager] ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/villager]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/bakery] ["",{"text":"    ","color":"white"},{"text":"パ ン 屋","color":"green"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/bakery]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/lycanthrope] ["",{"text":"    ","color":"white"},{"text":"狼 憑 き","color":"green"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/lycanthrope]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/mason] ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/mason]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/seer] ["",{"text":"    ","color":"white"},{"text":"予 言 者","color":"aqua"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/seer]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/fake_seer] ["",{"text":"    ","color":"white"},{"text":"偽予言者","color":"aqua"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/fake_seer]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/sage] ["",{"text":"    ","color":"white"},{"text":"賢    者","color":"aqua"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/sage]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/medium] ["",{"text":"    ","color":"white"},{"text":"霊 媒 師","color":"yellow"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/medium]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/detective] ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/detective]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/thief] ["",{"text":"    ","color":"white"},{"text":"怪    盗","color":"blue"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/thief]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/little_red] ["",{"text":"    ","color":"white"},{"text":"赤ずきん","color":"gold"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/little_red]","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/cat] ["",{"text":"    ","color":"white"},{"text":"猫    又","color":"gold"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/preview_role/cat]","color":"white"}]

## Send a display of dummy role
tellraw @a[predicate=mwj:game_rule/dummyrole_exist] ["",{"text":"  役職欠けは以下の役職でした。","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/madman] ["",{"text":"    ","color":"white"},{"text":"狂    人","color":"light_purple"},{"text":" ： 1人","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/fanatic] ["",{"text":"    ","color":"white"},{"text":"狂 信 者","color":"light_purple"},{"text":" ： 1人","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/immoralist] ["",{"text":"    ","color":"white"},{"text":"背 徳 者","color":"dark_purple"},{"text":" ： 1人","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/villager] ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green"},{"text":" ： 1人","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/bakery] ["",{"text":"    ","color":"white"},{"text":"パ ン 屋","color":"green"},{"text":" ： 1人","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/lycanthrope] ["",{"text":"    ","color":"white"},{"text":"狼 憑 き","color":"green"},{"text":" ： 1人","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/mason] ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green"},{"text":" ： 1人","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/seer] ["",{"text":"    ","color":"white"},{"text":"予 言 者","color":"aqua"},{"text":" ： 1人","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/fake_seer] ["",{"text":"    ","color":"white"},{"text":"偽予言者","color":"aqua"},{"text":" ： 1人","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/sage] ["",{"text":"    ","color":"white"},{"text":"賢    者","color":"aqua"},{"text":" ： 1人","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/medium] ["",{"text":"    ","color":"white"},{"text":"霊 媒 師","color":"yellow"},{"text":" ： 1人","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/detective] ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua"},{"text":" ： 1人","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/thief] ["",{"text":"    ","color":"white"},{"text":"怪    盗","color":"blue"},{"text":" ： 1人","color":"white"}]
tellraw @a[predicate=mwj:game_phase/dummy_role/little_red] ["",{"text":"    ","color":"white"},{"text":"赤ずきん","color":"gold"},{"text":" ： 1人","color":"white"}]

## Send a display of dummy role
tellraw @a[predicate=!mwj:game_rule/secondrole_none] ["",{"text":"  二次役職は以下のプレイヤーでした。","color":"white"}]
tellraw @a[predicate=mwj:game_rule/secondrole_ghost] ["",{"text":"    ","color":"white"},{"text":"地 縛 霊","color":"dark_purple"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/second_role/ghost]","color":"white"}]
tellraw @a[predicate=mwj:game_rule/secondrole_drunk] ["",{"text":"    ","color":"white"},{"text":"酔っ払い","color":"green"},{"text":" ： ","color":"white"},{"selector":"@a[predicate=mwj:game_phase/second_role/drunk]","color":"white"}]

## Send a Display of Survivors
tellraw @a [""]
tellraw @a ["",{"text":"    ","color":"white"},{"text":"生 存 者","color":"white"},{"text":" ： ","color":"white"},{"selector":"@a[scores={DeathCount=0},team=Player]","color":"white"}]

## Send a Thief Log
scoreboard players set #MWL NumberOfStolen 1
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/thief] ["",{"text":"----------------------------------","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/thief] ["",{"text":"  怪盗記録","color":"white"}]
execute if predicate mwj:system/setting_phase/choose_role/chosen_role/thief run function mwj:system/finish/thief_log

## Send a Common Message
tellraw @a ["",{"text":"----------------------------------","color":"white"}]

## Send a Kill Log
tellraw @a ["",{"text":"  死亡記録","color":"white"}]
scoreboard players operation #MWL CountOfKiller = #MWL NumberOfKillLog
scoreboard players set #MWL NumberOfKillLog 1
scoreboard players operation #MWL Tick *= #MWL Num00005

## Send a Game Begin Log
tellraw @a[predicate=mwj:system/common/time/game_time/start/in_thousands] ["",{"text":"    ","color":"white"},{"score":{"name":"#MWL","objective":"SetGameTime"},"color":"white"},{"text":".00 sec.  :  ゲーム開始","color":"white"}]
tellraw @a[predicate=mwj:system/common/time/game_time/start/in_hundreds] ["",{"text":"    0","color":"white"},{"score":{"name":"#MWL","objective":"SetGameTime"},"color":"white"},{"text":".00 sec.  :  ゲーム開始","color":"white"}]
tellraw @a[predicate=mwj:system/common/time/game_time/start/in_tens] ["",{"text":"   00","color":"white"},{"score":{"name":"#MWL","objective":"SetGameTime"},"color":"white"},{"text":".00 sec.  :  ゲーム開始","color":"white"}]

## Send a Kill Log
function mwj:system/finish/kill_log

## Send a Game Finish Log
## 1000 sec. -
tellraw @a[predicate=mwj:system/common/time/game_time/end/in_thousands/ones_tick] ["",{"text":"    ","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]
tellraw @a[predicate=mwj:system/common/time/game_time/end/in_thousands/tens_tick] ["",{"text":"    ","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]

## 100 sec. - 999 sec.
tellraw @a[predicate=mwj:system/common/time/game_time/end/in_hundreds/ones_tick] ["",{"text":"    0","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]
tellraw @a[predicate=mwj:system/common/time/game_time/end/in_hundreds/tens_tick] ["",{"text":"    0","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]

## 10 sec. - 99 sec.
tellraw @a[predicate=mwj:system/common/time/game_time/end/in_tens/ones_tick] ["",{"text":"    00","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]
tellraw @a[predicate=mwj:system/common/time/game_time/end/in_tens/tens_tick] ["",{"text":"    00","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]

## 0 sec. - 9.sec.
tellraw @a[predicate=mwj:system/common/time/game_time/end/in_ones/ones_tick] ["",{"text":"    000","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]
tellraw @a[predicate=mwj:system/common/time/game_time/end/in_ones/tens_tick] ["",{"text":"    000","color":"white"},{"score":{"name":"#MWL","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#MWL","objective":"Tick"},"color":"white"},{"text":" sec.  :  ゲーム終了","color":"white"}]

## Quit Game
function mwj:system/finish/exit_game
