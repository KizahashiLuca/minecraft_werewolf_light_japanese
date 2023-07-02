####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect Page Role
scoreboard objectives add TurnPageTmp dummy
scoreboard players operation @s TurnPageTmp = @s TurnPageNum
scoreboard players operation @s[scores={TurnPageNum=0,TurnPageLeft=1}] TurnPageTmp = #MWL TurnPageMax
execute if score @s[scores={TurnPageRight=1}] TurnPageNum = #MWL TurnPageMax run scoreboard players set @s TurnPageTmp 0
scoreboard players remove @s[scores={TurnPageNum=1..,TurnPageLeft=1}] TurnPageTmp 1
execute unless score @s[scores={TurnPageRight=1}] TurnPageNum = #MWL TurnPageMax run scoreboard players add @s TurnPageTmp 1
scoreboard players operation @s TurnPageNum = @s TurnPageTmp
scoreboard objectives remove TurnPageTmp

## Set Scoreboard
scoreboard players operation @s TargetOfRole = @s TurnPageNum
scoreboard players operation @s TargetOfRole *= #MWL Num00010

## Send a Common Message
tellraw @s [""]
tellraw @s ["",{"text":"----------------------------------","color":"white"}]
tellraw @s ["",{"text":"  賢者の予言を誰に行う？","color":"white"}]

## Send Triggers
scoreboard players add @s TargetOfRole 1
execute as @a if score @p[scores={CurrentRole=27,TagOfRoleWork=1}] TargetOfRole = @s NumOfPlayers unless score @p[scores={CurrentRole=27,TagOfRoleWork=1}] NumOfPlayers = @s NumOfPlayers run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"賢者の予言","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 1"},"hoverEvent":{"action":"show_text","value":[{"text":"賢者の予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRole 1
execute as @a if score @p[scores={CurrentRole=27,TagOfRoleWork=1}] TargetOfRole = @s NumOfPlayers unless score @p[scores={CurrentRole=27,TagOfRoleWork=1}] NumOfPlayers = @s NumOfPlayers run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"賢者の予言","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 2"},"hoverEvent":{"action":"show_text","value":[{"text":"賢者の予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRole 1
execute as @a if score @p[scores={CurrentRole=27,TagOfRoleWork=1}] TargetOfRole = @s NumOfPlayers unless score @p[scores={CurrentRole=27,TagOfRoleWork=1}] NumOfPlayers = @s NumOfPlayers run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"賢者の予言","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 3"},"hoverEvent":{"action":"show_text","value":[{"text":"賢者の予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRole 1
execute as @a if score @p[scores={CurrentRole=27,TagOfRoleWork=1}] TargetOfRole = @s NumOfPlayers unless score @p[scores={CurrentRole=27,TagOfRoleWork=1}] NumOfPlayers = @s NumOfPlayers run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"賢者の予言","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 4"},"hoverEvent":{"action":"show_text","value":[{"text":"賢者の予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRole 1
execute as @a if score @p[scores={CurrentRole=27,TagOfRoleWork=1}] TargetOfRole = @s NumOfPlayers unless score @p[scores={CurrentRole=27,TagOfRoleWork=1}] NumOfPlayers = @s NumOfPlayers run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"賢者の予言","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 5"},"hoverEvent":{"action":"show_text","value":[{"text":"賢者の予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRole 1
execute as @a if score @p[scores={CurrentRole=27,TagOfRoleWork=1}] TargetOfRole = @s NumOfPlayers unless score @p[scores={CurrentRole=27,TagOfRoleWork=1}] NumOfPlayers = @s NumOfPlayers run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"賢者の予言","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 6"},"hoverEvent":{"action":"show_text","value":[{"text":"賢者の予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRole 1
execute as @a if score @p[scores={CurrentRole=27,TagOfRoleWork=1}] TargetOfRole = @s NumOfPlayers unless score @p[scores={CurrentRole=27,TagOfRoleWork=1}] NumOfPlayers = @s NumOfPlayers run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"賢者の予言","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 7"},"hoverEvent":{"action":"show_text","value":[{"text":"賢者の予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRole 1
execute as @a if score @p[scores={CurrentRole=27,TagOfRoleWork=1}] TargetOfRole = @s NumOfPlayers unless score @p[scores={CurrentRole=27,TagOfRoleWork=1}] NumOfPlayers = @s NumOfPlayers run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"賢者の予言","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 8"},"hoverEvent":{"action":"show_text","value":[{"text":"賢者の予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRole 1
execute as @a if score @p[scores={CurrentRole=27,TagOfRoleWork=1}] TargetOfRole = @s NumOfPlayers unless score @p[scores={CurrentRole=27,TagOfRoleWork=1}] NumOfPlayers = @s NumOfPlayers run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"賢者の予言","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 9"},"hoverEvent":{"action":"show_text","value":[{"text":"賢者の予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRole 1
execute as @a if score @p[scores={CurrentRole=27,TagOfRoleWork=1}] TargetOfRole = @s NumOfPlayers unless score @p[scores={CurrentRole=27,TagOfRoleWork=1}] NumOfPlayers = @s NumOfPlayers run tellraw @p[scores={CurrentRole=27,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"賢者の予言","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 10"},"hoverEvent":{"action":"show_text","value":[{"text":"賢者の予言"}]},"color":"green","bold":true}]

## Send Page Role
scoreboard players operation @s PageNumer = @s TurnPageNum
scoreboard players operation @s PageDenom = #MWL TurnPageMax
scoreboard players add @s PageNumer 1
scoreboard players add @s PageDenom 1
execute if score #MWL TurnPageMax matches 1.. run tellraw @s ["",{"text":"    ","color":"white"},{"text":"<","clickEvent":{"action":"run_command","value":"/trigger TurnPageLeft set 1"},"hoverEvent":{"action":"show_text","value":[{"text":"前のページへ"}]},"color":"green","bold":true},{"text":"  ( ","color":"white"},{"score":{"name":"@s","objective":"PageNumer"},"color":"white"},{"text":" / ","color":"white"},{"score":{"name":"@s","objective":"PageDenom"},"color":"white"},{"text":" )  ","color":"white"},{"text":">","clickEvent":{"action":"run_command","value":"/trigger TurnPageRight set 1"},"hoverEvent":{"action":"show_text","value":[{"text":"次のページへ"}]},"color":"green","bold":true}]

## Send a Common Message
tellraw @s ["",{"text":"----------------------------------","color":"white"}]
tellraw @s [""]

## Reset Scoreboard
scoreboard players reset @s PageNumer
scoreboard players reset @s PageDenom
scoreboard players reset @s TargetOfRole
scoreboard players reset @s DropTorch