####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Message NumOf Item to All Players
tellraw @a [""]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  役職選択は、 ","color":"white"}]
execute if score #MWL NumOfWolves matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"人    狼","color":"red","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfWolves"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfClWolves matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"賢    狼","color":"dark_red","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfClWolves"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfWhWolves matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"白    狼","color":"red","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfWhWolves"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfMadmans matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂    人","color":"light_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfMadmans"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfFanatics matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"狂 信 者","color":"light_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfFanatics"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfFoxes matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"羽 衣 狐","color":"dark_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfFoxes"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfImmorals matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"背 徳 者","color":"dark_purple","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfImmorals"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfVillagers matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfVillagers"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfMasons matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfMasons"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfBakeries matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"パ ン 屋","color":"green","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfBakeries"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfSeers matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"予 言 者","color":"aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfSeers"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfFkSeers matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"偽予言者","color":"aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfFkSeers"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfSages matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"賢    者","color":"aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfSages"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfMediums matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"霊 媒 師","color":"yellow","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfMediums"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfDetectives matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfDetectives"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfThieves matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"怪    盗","color":"blue","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfThieves"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfLtReds matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"赤ずきん","color":"gold","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfLtReds"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfCats matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"猫    又","color":"gold","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfCats"},"color":"white"},{"text":"人","color":"white"}]
# execute if score #MWL NumOf matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"追加役職","color":"white","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOf"},"color":"white"},{"text":"人","color":"white"}]
# execute if score #MWL NumOf matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"追加役職","color":"white","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"NumOf"},"color":"white"},{"text":"人","color":"white"}]
execute if score #MWL NumOfWolves matches ..0 if score #MWL NumOfMadmans matches ..0 if score #MWL NumOfVillagers matches ..0 if score #MWL NumOfSeers matches ..0 if score #MWL NumOfMediums matches ..0 if score #MWL NumOfFoxes matches ..0 if score #MWL NumOfMasons matches ..0 if score #MWL NumOfDetectives matches ..0 if score #MWL NumOfThieves matches ..0 if score #MWL NumOfCats matches ..0 if score #MWL NumOfFkSeers matches ..0 if score #MWL NumOfSages matches ..0 if score #MWL NumOfWhWolves matches ..0 if score #MWL NumOfFanatics matches ..0 if score #MWL NumOfImmorals matches ..0 if score #MWL NumOfLtReds matches ..0 if score #MWL NumOfClWolves matches ..0 if score #MWL NumOfBakeries matches ..0 run tellraw @a ["",{"text":"    ","color":"white"},{"text":"なし","color":"white","bold":true}]
tellraw @a ["",{"text":"  に設定されました。","color":"white"}]
execute if score #MWL AddedRole matches 1.. run tellraw @a [""]
execute if score #MWL AddedRole matches 1.. run tellraw @a ["",{"text":"  ","color":"white"},{"text":"残り追加可能人数","color":"white","bold":true},{"text":" : ","color":"white"},{"score":{"name":"#MWL","objective":"AddedRole"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a [""]

## Change to Choose Mode
function mwj:system/setting/casting_decision_1/set_added
function mwj:system/setting/choose_mode/change_to