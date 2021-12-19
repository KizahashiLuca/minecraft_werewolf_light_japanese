####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Common Message
tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] [""]
tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"  賢者結果","color":"white"}]

## Send a Message - Suspects' Role
execute as @s[scores={CurrentRole=1,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"人狼","color":"red","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=3,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"賢狼","color":"dark_red","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=4,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白狼","color":"red","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=5,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"狂人","color":"light_purple","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=6,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"狂信者","color":"light_purple","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=10,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=11,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"背徳者","color":"dark_purple","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=20,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=21,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"パン屋","color":"green","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=22,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"狼憑き","color":"green","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=24,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"共有者","color":"dark_green","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=25,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"予言者","color":"aqua","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=26,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"偽予言者","color":"aqua","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=27,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"賢者","color":"aqua","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=28,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"霊媒師","color":"yellow","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=31,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"探偵","color":"dark_aqua","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=35,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"怪盗","color":"blue","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=39,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"赤ずきん","color":"gold","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=40,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"猫又","color":"gold","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={2ndRoleDone=0}] run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"酔っ払い","color":"green","bold":true},{"text":" 状態です","color":"white"}]

## Kill fox
execute as @s[scores={CurrentRole=10,DeathCount=0}] run function mwj:system/game_phase/sage/damage_to_fox

## Send a Common Message
tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] [""]

## Seer Role Done
scoreboard players set @p[scores={CurrentRole=27,TagOfRoleWork=1}] RoleDone 1

## Reset Seer Trigger
scoreboard players reset @p[scores={CurrentRole=27,TagOfRoleWork=1}] TargetOfRole
