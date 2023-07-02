####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send message
tellraw @a [""]

tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/drunk] ["",{"text":"  あなたは ","color":"white"},{"text":"酔っ払い","color":"green","bold":true},{"text":" 状態です","color":"white"}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/not_drunk] ["",{"text":"  あなたの役職 : ","color":"white"}]

tellraw @a[predicate=mwj:player/not_player] ["",{"text":"    ","color":"white"},{"text":"観戦者","color":"white","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/wolf] ["",{"text":"    ","color":"white"},{"text":"人狼","color":"red","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/clever_wolf] ["",{"text":"    ","color":"white"},{"text":"賢狼","color":"dark_red","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/white_wolf] ["",{"text":"    ","color":"white"},{"text":"白狼","color":"red","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/madman] ["",{"text":"    ","color":"white"},{"text":"狂人","color":"light_purple","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/fanatic] ["",{"text":"    ","color":"white"},{"text":"狂信者","color":"light_purple","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/fox] ["",{"text":"    ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/immoralist] ["",{"text":"    ","color":"white"},{"text":"背徳者","color":"dark_purple","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/villager] ["",{"text":"    ","color":"white"},{"text":"村人","color":"green","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/bakery] ["",{"text":"    ","color":"white"},{"text":"パン屋","color":"green","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/lycanthrope] ["",{"text":"    ","color":"white"},{"text":"村人","color":"green","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/mason] ["",{"text":"    ","color":"white"},{"text":"共有者","color":"dark_green","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/seer] ["",{"text":"    ","color":"white"},{"text":"予言者","color":"aqua","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/fake_seer] ["",{"text":"    ","color":"white"},{"text":"予言者","color":"aqua","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/sage] ["",{"text":"    ","color":"white"},{"text":"賢者","color":"aqua","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/medium] ["",{"text":"    ","color":"white"},{"text":"霊媒師","color":"yellow","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/detective] ["",{"text":"    ","color":"white"},{"text":"探偵","color":"dark_aqua","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/thief] ["",{"text":"    ","color":"white"},{"text":"怪盗","color":"blue","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/little_red] ["",{"text":"    ","color":"white"},{"text":"赤ずきん","color":"gold","bold":true}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/cat] ["",{"text":"    ","color":"white"},{"text":"猫又","color":"gold","bold":true}]

tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/werewolf] [""]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/werewolf] ["",{"text":"  仲間の人狼 : ","color":"white"}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/werewolf] ["",{"text":"    ","color":"white"},{"selector":"@a[scores={CurrentRole=1..4}]","color":"red"}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/fanatic] [""]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/fanatic] ["",{"text":"  主人の人狼 : ","color":"white"}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/fanatic] ["",{"text":"    ","color":"white"},{"selector":"@a[scores={CurrentRole=1..4}]","color":"red"}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/immoralist] [""]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/immoralist] ["",{"text":"  主人の羽衣狐 : ","color":"white"}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/immoralist] ["",{"text":"    ","color":"white"},{"selector":"@a[scores={CurrentRole=10}]","color":"dark_purple"}]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/mason] [""]
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/mason] ["",{"text":"  仲間の共有者 : ","color":"white"}]
execute as @a[predicate=mwj:system/game_phase/settings/tell_roles/mason] run function mwj:system/game_phase/settings/tell_roles/pairs/mason
