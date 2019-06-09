###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 10 June 2019
## Version: beta-1.2.2
###############################

tellraw @s ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"  霊媒を誰に行う？","color":"reset"}]
execute if score Time NUM matches 1.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=1}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 1"},"color":"green","bold":true}]
execute if score Time NUM matches 2.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=2}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 2"},"color":"green","bold":true}]
execute if score Time NUM matches 3.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=3}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 3"},"color":"green","bold":true}]
execute if score Time NUM matches 4.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=4}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 4"},"color":"green","bold":true}]
execute if score Time NUM matches 5.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=5}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 5"},"color":"green","bold":true}]
execute if score Time NUM matches 6.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=6}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 6"},"color":"green","bold":true}]
execute if score Time NUM matches 7.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=7}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 7"},"color":"green","bold":true}]
execute if score Time NUM matches 8.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=8}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 8"},"color":"green","bold":true}]
execute if score Time NUM matches 9.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=9}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 9"},"color":"green","bold":true}]
execute if score Time NUM matches 10.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=10}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 10"},"color":"green","bold":true}]
execute if score Time NUM matches 11.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=11}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 11"},"color":"green","bold":true}]
execute if score Time NUM matches 12.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=12}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 12"},"color":"green","bold":true}]
execute if score Time NUM matches 13.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=13}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 13"},"color":"green","bold":true}]
execute if score Time NUM matches 14.. run tellraw @s ["",{"text":"    ","color":"reset"},{"selector":"@a[scores={NUM=14}]","color":"reset"},{"text":" > ","color":"reset"},{"text":"霊媒","clickEvent":{"action":"run_command","value":"/trigger MEDIUM_OBJ set 14"},"color":"green","bold":true}]
tellraw @s ["",{"text":"----------------------------------\n","color":"reset"}]

scoreboard players set @s TORCH 0