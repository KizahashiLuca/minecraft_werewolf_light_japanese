####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send message
tellraw @a [""]
tellraw @a[scores={Set2ndRole=0..1}] ["",{"text":"  あなたの役職 : ","color":"white"}]
tellraw @a[scores={CurrentRole=1,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"人狼","color":"red","bold":true}]
tellraw @a[scores={CurrentRole=3,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"賢狼","color":"dark_red","bold":true}]
tellraw @a[scores={CurrentRole=4,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"白狼","color":"red","bold":true}]
tellraw @a[scores={CurrentRole=5,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"狂人","color":"light_purple","bold":true}]
tellraw @a[scores={CurrentRole=6,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"狂信者","color":"light_purple","bold":true}]
tellraw @a[scores={CurrentRole=10,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true}]
tellraw @a[scores={CurrentRole=11,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"背徳者","color":"dark_purple","bold":true}]
tellraw @a[scores={CurrentRole=20,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"村人","color":"green","bold":true}]
tellraw @a[scores={CurrentRole=21,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"パン屋","color":"green","bold":true}]
tellraw @a[scores={CurrentRole=22,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"村人","color":"green","bold":true}]
tellraw @a[scores={CurrentRole=24,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"共有者","color":"dark_green","bold":true}]
tellraw @a[scores={CurrentRole=25,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"予言者","color":"aqua","bold":true}]
tellraw @a[scores={CurrentRole=26,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"予言者","color":"aqua","bold":true}]
tellraw @a[scores={CurrentRole=27,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"賢者","color":"aqua","bold":true}]
tellraw @a[scores={CurrentRole=28,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"霊媒師","color":"yellow","bold":true}]
tellraw @a[scores={CurrentRole=31,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"探偵","color":"dark_aqua","bold":true}]
tellraw @a[scores={CurrentRole=35,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"怪盗","color":"blue","bold":true}]
tellraw @a[scores={CurrentRole=39,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"赤ずきん","color":"gold","bold":true}]
tellraw @a[scores={CurrentRole=40,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"text":"猫又","color":"gold","bold":true}]
tellraw @a[team=!Player] ["",{"text":"    ","color":"white"},{"text":"観戦者","color":"white","bold":true}]

tellraw @a[scores={CurrentRole=1..4,Set2ndRole=0..1}] [""]
tellraw @a[scores={CurrentRole=1..4,Set2ndRole=0..1}] ["",{"text":"  仲間の人狼 : ","color":"white"}]
tellraw @a[scores={CurrentRole=1..4,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"selector":"@a[scores={CurrentRole=1..4}]","color":"red"}]
tellraw @a[scores={CurrentRole=6,Set2ndRole=0..1}] [""]
tellraw @a[scores={CurrentRole=6,Set2ndRole=0..1}] ["",{"text":"  主人の人狼 : ","color":"white"}]
tellraw @a[scores={CurrentRole=6,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"selector":"@a[scores={CurrentRole=1..4}]","color":"red"}]
tellraw @a[scores={CurrentRole=11,Set2ndRole=0..1}] [""]
tellraw @a[scores={CurrentRole=11,Set2ndRole=0..1}] ["",{"text":"  主人の羽衣狐 : ","color":"white"}]
tellraw @a[scores={CurrentRole=11,Set2ndRole=0..1}] ["",{"text":"    ","color":"white"},{"selector":"@a[scores={CurrentRole=10}]","color":"dark_purple"}]
tellraw @a[scores={CurrentRole=24,Set2ndRole=0..1}] [""]
tellraw @a[scores={CurrentRole=24,Set2ndRole=0..1}] ["",{"text":"  仲間の共有者 : ","color":"white"}]
execute as @a[scores={CurrentRole=24,Set2ndRole=0..1}] run function mwj:system/game_phase/settings/tell_roles/pairs/mason

tellraw @a[scores={CurrentRole=1..40,Set2ndRole=2}] ["",{"text":"  あなたは ","color":"white"},{"text":"酔っ払い","color":"green","bold":true},{"text":" 状態です","color":"white"}]