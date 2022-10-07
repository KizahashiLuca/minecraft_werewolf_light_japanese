####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Title Game Start
title @a times 5 40 20
title @a[predicate=mwj:phase/setting_phase/master] title ["",{"text":"潜伏時間開始","color":"red","bold":true}]
title @a[predicate=mwj:phase/setting_phase/master] subtitle ["",{"text":"Hiding Start","color":"white","bold":true}]
title @a[predicate=mwj:phase/hide_phase] title ["",{"text":"ゲーム開始","color":"red","bold":true}]
title @a[predicate=mwj:phase/hide_phase] subtitle ["",{"text":"Game Start","color":"white","bold":true}]

## Set scoreboard
scoreboard players set #MWL MasonPair 1

## Display Breakdown of Roles & His Role
function mwj:system/common/message/begin
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a[predicate=mwj:phase/setting_phase/master] ["",{"text":"  ","color":"white"},{"text":"潜伏開始","color":"green","bold":true}]
tellraw @a[predicate=mwj:phase/hide_phase] ["",{"text":"  ","color":"white"},{"text":"ゲーム開始","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"white"},{"text":"こちら","hoverEvent":{"action":"show_text","value":[{"text":"Wikiへ移動"}]},"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"},"bold":true,"color":"blue","underlined":true}]

tellraw @a [""]
tellraw @a ["",{"text":"  ゲームモードは、 以下のとおりです。","color":"white"}]
execute if predicate mwj:game_rule/dummyrole_none run function mwj:system/common/message/dummyrole_not_available
execute if predicate mwj:game_rule/dummyrole_exist run function mwj:system/common/message/dummyrole_available
execute if predicate mwj:game_rule/secondrole_none run function mwj:system/common/message/2ndrole_off
execute if predicate mwj:game_rule/secondrole_ghost run function mwj:system/common/message/2ndrole_ghost
execute if predicate mwj:game_rule/secondrole_drunk run function mwj:system/common/message/2ndrole_drunk
execute if predicate mwj:game_rule/gamemode_normal run function mwj:system/common/message/gamemode_normal_werewolf
execute if predicate mwj:game_rule/gamemode_two_alive run function mwj:system/common/message/gamemode_two_alive
execute if predicate mwj:game_rule/gamemode_annihilation run function mwj:system/common/message/gamemode_annihilation

tellraw @a ["",{"text":"    制限時間 : ","color":"white"},{"score":{"name":"#MWL","objective":"GameTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true}]
tellraw @a ["",{"text":"      残り時間 ","color":"white"},{"score":{"name":"#MWL","objective":"GlowTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true},{"text":" で生存者全員が発光","color":"white"}]

tellraw @a [""]
tellraw @a ["",{"text":"  役職内訳 : ","color":"white"}]
function mwj:system/common/message/set_roles

tellraw @a [""]
tellraw @a ["",{"text":"  特殊アイテム内訳 : ","color":"white"}]
function mwj:system/common/message/set_items

execute if predicate mwj:phase/hide_phase run function mwj:system/game_phase/settings/tell_roles/main
function mwj:system/common/message/end
