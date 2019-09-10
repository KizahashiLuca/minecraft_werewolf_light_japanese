###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Send a Common Message
tellraw @s ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @s ["",{"text":"  霊媒を誰に行う？","color":"white"}]

## Send Triggers
execute if score Time NUM matches 1.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=1}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 1"},"color":"green","bold":true}]
execute if score Time NUM matches 2.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=2}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 2"},"color":"green","bold":true}]
execute if score Time NUM matches 3.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=3}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 3"},"color":"green","bold":true}]
execute if score Time NUM matches 4.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=4}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 4"},"color":"green","bold":true}]
execute if score Time NUM matches 5.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=5}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 5"},"color":"green","bold":true}]
execute if score Time NUM matches 6.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=6}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 6"},"color":"green","bold":true}]
execute if score Time NUM matches 7.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=7}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 7"},"color":"green","bold":true}]
execute if score Time NUM matches 8.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=8}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 8"},"color":"green","bold":true}]
execute if score Time NUM matches 9.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=9}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 9"},"color":"green","bold":true}]
execute if score Time NUM matches 10.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=10}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 10"},"color":"green","bold":true}]
execute if score Time NUM matches 11.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=11}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 11"},"color":"green","bold":true}]
execute if score Time NUM matches 12.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=12}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 12"},"color":"green","bold":true}]
execute if score Time NUM matches 13.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=13}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 13"},"color":"green","bold":true}]
execute if score Time NUM matches 14.. run tellraw @s ["",{"text":"    ","color":"white"},{"selector":"@a[scores={NUM=14}]","color":"white"},{"text":" > ","color":"white"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 14"},"color":"green","bold":true}]

## Send a Common Message
tellraw @s ["",{"text":"----------------------------------\n","color":"white"}]

## Reset Scoreboard
scoreboard players set @s TORCH 0