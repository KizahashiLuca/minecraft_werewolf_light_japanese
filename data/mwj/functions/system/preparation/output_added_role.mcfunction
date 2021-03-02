###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Send a Message Added Role to All Players
execute if score #MWL AddedRoleNumber matches 1.. run tellraw @a ["",{"text":"\n  追加役職は、以下のとおりです。","color":"white"}]
execute if score #MWL AddedRoleNumber matches ..0 run tellraw @a ["",{"text":"\n  追加役職は、選択できません。","color":"white"}]

execute if score #MWL AddedWolf matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"人    狼","color":"red","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedWolf"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedMadman matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂    人","color":"light_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedMadman"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedFox matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"羽 衣 狐","color":"dark_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedFox"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedVilla matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedVilla"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedSeer matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"予 言 者","color":"aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedSeer"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedMedium matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"霊 媒 師","color":"yellow","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedMedium"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedMason matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedMason"},"color":"white"},{"text":"組","color":"white"}]
execute if score #MWL AddedDetec matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedDetec"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedThief matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"怪    盗","color":"blue","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedThief"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedLtRed matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"赤ずきん","color":"gold","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedLtRed"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedCat matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"猫    又","color":"gold","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedCat"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedFkSeer matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"偽予言者","color":"aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedFkSeer"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedSage matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"賢    者","color":"aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedSage"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedClWolf matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"賢    狼","color":"dark_red","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedClWolf"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedWhWolf matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"白    狼","color":"red","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedWhWolf"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedFanatic matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂 信 者","color":"light_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedFanatic"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL AddedImmoral matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"背 徳 者","color":"dark_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedImmoral"},"color":"white"},{"text":"人","color":"white"}]