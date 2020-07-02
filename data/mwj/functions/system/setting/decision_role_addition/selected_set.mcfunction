###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Send a Message Added Role to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  追加役職は、 ","color":"white"}]
execute if score Time AddedWolf matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"人    狼","color":"red","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedWolf"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time AddedMadman matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂    人","color":"light_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedMadman"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time AddedFox matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"羽 衣 狐","color":"dark_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedFox"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time AddedVilla matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedVilla"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time AddedSeer matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"預 言 者","color":"aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedSeer"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time AddedMedium matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"霊 媒 師","color":"yellow","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedMedium"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time AddedMason matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedMason"},"color":"white"},{"text":"組","color":"white"}]
execute if score Time AddedDetec matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedDetec"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time AddedThief matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"怪    盗","color":"blue","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedThief"},"color":"white"},{"text":"人","color":"white"}]
execute if score Time AddedCat matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"猫    又","color":"gold","bold":true},{"text":" : ","color":"white"},{"score":{"name":"Time","objective":"AddedCat"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a ["",{"text":"  に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to_choose_mode