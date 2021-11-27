####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Reset Scoreboard
scoreboard players reset @a RoleOfNum
scoreboard players set #MWL MasonPair 1
scoreboard players set @s 2ndRoleDone 1

## Send message
tellraw @s [""]
tellraw @s ["",{"text":"----------------------------------","color":"white"}]
tellraw @s ["",{"text":"  あなたの役職 : ","color":"white"}]
tellraw @s[scores={CurrentRole=1}] ["",{"text":"    ","color":"white"},{"text":"人狼","color":"red","bold":true}]
tellraw @s[scores={CurrentRole=3}] ["",{"text":"    ","color":"white"},{"text":"賢狼","color":"dark_red","bold":true}]
tellraw @s[scores={CurrentRole=4}] ["",{"text":"    ","color":"white"},{"text":"白狼","color":"red","bold":true}]
tellraw @s[scores={CurrentRole=5}] ["",{"text":"    ","color":"white"},{"text":"狂人","color":"light_purple","bold":true}]
tellraw @s[scores={CurrentRole=6}] ["",{"text":"    ","color":"white"},{"text":"狂信者","color":"light_purple","bold":true}]
tellraw @s[scores={CurrentRole=10}] ["",{"text":"    ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true}]
tellraw @s[scores={CurrentRole=11}] ["",{"text":"    ","color":"white"},{"text":"背徳者","color":"dark_purple","bold":true}]
tellraw @s[scores={CurrentRole=20}] ["",{"text":"    ","color":"white"},{"text":"村人","color":"green","bold":true}]
tellraw @s[scores={CurrentRole=21}] ["",{"text":"    ","color":"white"},{"text":"パン屋","color":"green","bold":true}]
tellraw @s[scores={CurrentRole=22}] ["",{"text":"    ","color":"white"},{"text":"村人","color":"green","bold":true}]
tellraw @s[scores={CurrentRole=24}] ["",{"text":"    ","color":"white"},{"text":"共有者","color":"dark_green","bold":true}]
tellraw @s[scores={CurrentRole=25}] ["",{"text":"    ","color":"white"},{"text":"予言者","color":"aqua","bold":true}]
tellraw @s[scores={CurrentRole=26}] ["",{"text":"    ","color":"white"},{"text":"予言者","color":"aqua","bold":true}]
tellraw @s[scores={CurrentRole=27}] ["",{"text":"    ","color":"white"},{"text":"賢者","color":"aqua","bold":true}]
tellraw @s[scores={CurrentRole=28}] ["",{"text":"    ","color":"white"},{"text":"霊媒師","color":"yellow","bold":true}]
tellraw @s[scores={CurrentRole=31}] ["",{"text":"    ","color":"white"},{"text":"探偵","color":"dark_aqua","bold":true}]
tellraw @s[scores={CurrentRole=35}] ["",{"text":"    ","color":"white"},{"text":"怪盗","color":"blue","bold":true}]
tellraw @s[scores={CurrentRole=39}] ["",{"text":"    ","color":"white"},{"text":"赤ずきん","color":"gold","bold":true}]
tellraw @s[scores={CurrentRole=40}] ["",{"text":"    ","color":"white"},{"text":"猫又","color":"gold","bold":true}]

tellraw @s[scores={CurrentRole=1..4}] [""]
tellraw @s[scores={CurrentRole=1..4}] ["",{"text":"  仲間の人狼 : ","color":"white"}]
tellraw @s[scores={CurrentRole=1..4}] ["",{"text":"    ","color":"white"},{"selector":"@s[scores={CurrentRole=1..4}]","color":"red"}]
tellraw @s[scores={CurrentRole=6}] [""]
tellraw @s[scores={CurrentRole=6}] ["",{"text":"  主人の人狼 : ","color":"white"}]
tellraw @s[scores={CurrentRole=6}] ["",{"text":"    ","color":"white"},{"selector":"@s[scores={CurrentRole=1..4}]","color":"red"}]
tellraw @s[scores={CurrentRole=11}] [""]
tellraw @s[scores={CurrentRole=11}] ["",{"text":"  主人の羽衣狐 : ","color":"white"}]
tellraw @s[scores={CurrentRole=11}] ["",{"text":"    ","color":"white"},{"selector":"@s[scores={CurrentRole=10}]","color":"dark_purple"}]
tellraw @s[scores={CurrentRole=24}] [""]
tellraw @s[scores={CurrentRole=24}] ["",{"text":"  仲間の共有者 : ","color":"white"}]
execute as @s[scores={CurrentRole=24}] run function mwj:system/game_phase/settings/tell_roles/pairs/mason
tellraw @s ["",{"text":"----------------------------------","color":"white"}]
tellraw @s [""]