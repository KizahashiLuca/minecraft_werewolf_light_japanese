###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

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
scoreboard players operation @s RoleTarget = @s TurnPageNum
scoreboard players operation @s RoleTarget *= #MWL 10

## Send a Common Message
tellraw @s ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @s ["",{"text":"  誰の役職を盗む？","color":"white"}]

## Send Triggers
scoreboard players add @s RoleTarget 1
execute as @a if score @p[scores={CurrentRole=35,RoleOfNum=1}] RoleTarget = @s NUM unless score @p[scores={CurrentRole=35,RoleOfNum=1}] NUM = @s NUM run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"盗む","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 1"},"hoverEvent":{"action":"show_text","value":[{"selector":"@s"},{"text":" を盗む"}]},"color":"green","bold":true}]
scoreboard players add @s RoleTarget 1
execute as @a if score @p[scores={CurrentRole=35,RoleOfNum=1}] RoleTarget = @s NUM unless score @p[scores={CurrentRole=35,RoleOfNum=1}] NUM = @s NUM run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"盗む","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 2"},"hoverEvent":{"action":"show_text","value":[{"selector":"@s"},{"text":" を盗む"}]},"color":"green","bold":true}]
scoreboard players add @s RoleTarget 1
execute as @a if score @p[scores={CurrentRole=35,RoleOfNum=1}] RoleTarget = @s NUM unless score @p[scores={CurrentRole=35,RoleOfNum=1}] NUM = @s NUM run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"盗む","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 3"},"hoverEvent":{"action":"show_text","value":[{"selector":"@s"},{"text":" を盗む"}]},"color":"green","bold":true}]
scoreboard players add @s RoleTarget 1
execute as @a if score @p[scores={CurrentRole=35,RoleOfNum=1}] RoleTarget = @s NUM unless score @p[scores={CurrentRole=35,RoleOfNum=1}] NUM = @s NUM run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"盗む","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 4"},"hoverEvent":{"action":"show_text","value":[{"selector":"@s"},{"text":" を盗む"}]},"color":"green","bold":true}]
scoreboard players add @s RoleTarget 1
execute as @a if score @p[scores={CurrentRole=35,RoleOfNum=1}] RoleTarget = @s NUM unless score @p[scores={CurrentRole=35,RoleOfNum=1}] NUM = @s NUM run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"盗む","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 5"},"hoverEvent":{"action":"show_text","value":[{"selector":"@s"},{"text":" を盗む"}]},"color":"green","bold":true}]
scoreboard players add @s RoleTarget 1
execute as @a if score @p[scores={CurrentRole=35,RoleOfNum=1}] RoleTarget = @s NUM unless score @p[scores={CurrentRole=35,RoleOfNum=1}] NUM = @s NUM run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"盗む","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 6"},"hoverEvent":{"action":"show_text","value":[{"selector":"@s"},{"text":" を盗む"}]},"color":"green","bold":true}]
scoreboard players add @s RoleTarget 1
execute as @a if score @p[scores={CurrentRole=35,RoleOfNum=1}] RoleTarget = @s NUM unless score @p[scores={CurrentRole=35,RoleOfNum=1}] NUM = @s NUM run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"盗む","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 7"},"hoverEvent":{"action":"show_text","value":[{"selector":"@s"},{"text":" を盗む"}]},"color":"green","bold":true}]
scoreboard players add @s RoleTarget 1
execute as @a if score @p[scores={CurrentRole=35,RoleOfNum=1}] RoleTarget = @s NUM unless score @p[scores={CurrentRole=35,RoleOfNum=1}] NUM = @s NUM run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"盗む","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 8"},"hoverEvent":{"action":"show_text","value":[{"selector":"@s"},{"text":" を盗む"}]},"color":"green","bold":true}]
scoreboard players add @s RoleTarget 1
execute as @a if score @p[scores={CurrentRole=35,RoleOfNum=1}] RoleTarget = @s NUM unless score @p[scores={CurrentRole=35,RoleOfNum=1}] NUM = @s NUM run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"盗む","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 9"},"hoverEvent":{"action":"show_text","value":[{"selector":"@s"},{"text":" を盗む"}]},"color":"green","bold":true}]
scoreboard players add @s RoleTarget 1
execute as @a if score @p[scores={CurrentRole=35,RoleOfNum=1}] RoleTarget = @s NUM unless score @p[scores={CurrentRole=35,RoleOfNum=1}] NUM = @s NUM run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"盗む","clickEvent":{"action":"run_command","value":"/trigger RoleTrigger set 10"},"hoverEvent":{"action":"show_text","value":[{"selector":"@s"},{"text":" を盗む"}]},"color":"green","bold":true}]

## Send Page Role
scoreboard players operation @s PageNumer = @s TurnPageNum
scoreboard players operation @s PageDenom = #MWL TurnPageMax
scoreboard players add @s PageNumer 1
scoreboard players add @s PageDenom 1
execute if score #MWL TurnPageMax matches 1.. run tellraw @s ["",{"text":"    ","color":"white"},{"text":"<","clickEvent":{"action":"run_command","value":"/trigger TurnPageLeft set 1"},"hoverEvent":{"action":"show_text","value":[{"text":"前のページへ"}]},"color":"green","bold":true},{"text":"  ( ","color":"white"},{"score":{"name":"@s","objective":"PageNumer"},"color":"white"},{"text":" / ","color":"white"},{"score":{"name":"@s","objective":"PageDenom"},"color":"white"},{"text":" )  ","color":"white"},{"text":">","clickEvent":{"action":"run_command","value":"/trigger TurnPageRight set 1"},"hoverEvent":{"action":"show_text","value":[{"text":"次のページへ"}]},"color":"green","bold":true}]

## Send a Common Message
tellraw @s ["",{"text":"----------------------------------\n","color":"white"}]

## Reset Scoreboard
scoreboard players set @s RoleTarget 0
scoreboard players set @s DropTorch 0