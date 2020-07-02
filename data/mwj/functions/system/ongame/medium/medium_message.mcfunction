###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Detect Page Role
scoreboard players operation @s[scores={ROLE_PAGE=0,ROLE_L_PAGE=1}] ROLE_PAGE = Time ROLE_PAGE_NUM
execute if score @s[scores={ROLE_R_PAGE=1}] ROLE_PAGE = Time ROLE_PAGE_NUM run scoreboard players set @s ROLE_PAGE 0
scoreboard players remove @s[scores={ROLE_PAGE=1..,ROLE_L_PAGE=1}] ROLE_PAGE 1
execute unless score @s[scores={ROLE_R_PAGE=1}] ROLE_PAGE = Time ROLE_PAGE_NUM run scoreboard players add @s ROLE_PAGE 1

## Set Scoreboard
scoreboard players operation @s ROLE_TARGET = @s ROLE_PAGE
scoreboard players operation @s ROLE_TARGET *= Time 10

## Send a Common Message
tellraw @s ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @s ["",{"text":"  霊媒を誰に行う？","color":"white"}]

## Send Triggers
scoreboard players add @s ROLE_TARGET 1
execute as @a if score @p[scores={ROLE=6,ROLE_OF_NUM=1}] ROLE_TARGET = @s NUM unless score @p[scores={ROLE=6,ROLE_OF_NUM=1}] NUM = @s NUM run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger ROLE_BUTTON set 1"},"color":"green","bold":true}]
scoreboard players add @s ROLE_TARGET 1
execute as @a if score @p[scores={ROLE=6,ROLE_OF_NUM=1}] ROLE_TARGET = @s NUM unless score @p[scores={ROLE=6,ROLE_OF_NUM=1}] NUM = @s NUM run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger ROLE_BUTTON set 2"},"color":"green","bold":true}]
scoreboard players add @s ROLE_TARGET 1
execute as @a if score @p[scores={ROLE=6,ROLE_OF_NUM=1}] ROLE_TARGET = @s NUM unless score @p[scores={ROLE=6,ROLE_OF_NUM=1}] NUM = @s NUM run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger ROLE_BUTTON set 3"},"color":"green","bold":true}]
scoreboard players add @s ROLE_TARGET 1
execute as @a if score @p[scores={ROLE=6,ROLE_OF_NUM=1}] ROLE_TARGET = @s NUM unless score @p[scores={ROLE=6,ROLE_OF_NUM=1}] NUM = @s NUM run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger ROLE_BUTTON set 4"},"color":"green","bold":true}]
scoreboard players add @s ROLE_TARGET 1
execute as @a if score @p[scores={ROLE=6,ROLE_OF_NUM=1}] ROLE_TARGET = @s NUM unless score @p[scores={ROLE=6,ROLE_OF_NUM=1}] NUM = @s NUM run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger ROLE_BUTTON set 5"},"color":"green","bold":true}]
scoreboard players add @s ROLE_TARGET 1
execute as @a if score @p[scores={ROLE=6,ROLE_OF_NUM=1}] ROLE_TARGET = @s NUM unless score @p[scores={ROLE=6,ROLE_OF_NUM=1}] NUM = @s NUM run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger ROLE_BUTTON set 6"},"color":"green","bold":true}]
scoreboard players add @s ROLE_TARGET 1
execute as @a if score @p[scores={ROLE=6,ROLE_OF_NUM=1}] ROLE_TARGET = @s NUM unless score @p[scores={ROLE=6,ROLE_OF_NUM=1}] NUM = @s NUM run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger ROLE_BUTTON set 7"},"color":"green","bold":true}]
scoreboard players add @s ROLE_TARGET 1
execute as @a if score @p[scores={ROLE=6,ROLE_OF_NUM=1}] ROLE_TARGET = @s NUM unless score @p[scores={ROLE=6,ROLE_OF_NUM=1}] NUM = @s NUM run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger ROLE_BUTTON set 8"},"color":"green","bold":true}]
scoreboard players add @s ROLE_TARGET 1
execute as @a if score @p[scores={ROLE=6,ROLE_OF_NUM=1}] ROLE_TARGET = @s NUM unless score @p[scores={ROLE=6,ROLE_OF_NUM=1}] NUM = @s NUM run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger ROLE_BUTTON set 9"},"color":"green","bold":true}]
scoreboard players add @s ROLE_TARGET 1
execute as @a if score @p[scores={ROLE=6,ROLE_OF_NUM=1}] ROLE_TARGET = @s NUM unless score @p[scores={ROLE=6,ROLE_OF_NUM=1}] NUM = @s NUM run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger ROLE_BUTTON set 10"},"color":"green","bold":true}]

## Send Page Role
scoreboard players operation @s PAGE_NUMER = @s ROLE_PAGE
scoreboard players operation @s PAGE_DENOM = Time ROLE_PAGE_NUM
scoreboard players add @s PAGE_NUMER 1
scoreboard players add @s PAGE_DENOM 1
execute if score Time ROLE_PAGE_NUM matches 1.. run tellraw @s ["",{"text":"    ","color":"white"},{"text":"<","clickEvent":{"action":"run_command","value":"/trigger ROLE_L_PAGE set 1"},"color":"green","bold":true},{"text":"  ( ","color":"white"},{"score":{"name":"@s","objective":"PAGE_NUMER"},"color":"white"},{"text":" / ","color":"white"},{"score":{"name":"@s","objective":"PAGE_DENOM"},"color":"white"},{"text":" )  ","color":"white"},{"text":">","clickEvent":{"action":"run_command","value":"/trigger ROLE_R_PAGE set 1"},"color":"green","bold":true}]

## Send a Common Message
tellraw @s ["",{"text":"----------------------------------\n","color":"white"}]

## Reset Scoreboard
scoreboard players set @s ROLE_TARGET 0
scoreboard players set @s TORCH 0