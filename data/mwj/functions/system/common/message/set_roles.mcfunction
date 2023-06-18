####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send message
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/wolf] ["",{"text":"    ","color":"white"},{"text":"人    狼","color":"red"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfWolves"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/clever_wolf] ["",{"text":"    ","color":"white"},{"text":"賢    狼","color":"dark_red"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfClWolves"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/white_wolf] ["",{"text":"    ","color":"white"},{"text":"白    狼","color":"red"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfWhWolves"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/madman] ["",{"text":"    ","color":"white"},{"text":"狂    人","color":"light_purple"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfMadmans"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/fanatic] ["",{"text":"    ","color":"white"},{"text":"狂 信 者","color":"light_purple"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfFanatics"},"color":"white"},{"text":"人","color":"white"}]

tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/fox] ["",{"text":"    ","color":"white"},{"text":"羽 衣 狐","color":"dark_purple"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfFoxes"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/immoralist] ["",{"text":"    ","color":"white"},{"text":"背 徳 者","color":"dark_purple"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfImmorals"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/villager] ["",{"text":"    ","color":"white"},{"text":"村    人","color":"green"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfVillagers"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/bakery] ["",{"text":"    ","color":"white"},{"text":"パ ン 屋","color":"green"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfBakeries"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/lycanthrope] ["",{"text":"    ","color":"white"},{"text":"狼 憑 き","color":"green"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfLycants"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/mason] ["",{"text":"    ","color":"white"},{"text":"共 有 者","color":"dark_green"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfMasons"},"color":"white"},{"text":"人 - ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfMasonPair"},"color":"white"},{"text":"組","color":"white"}]

tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/seer] ["",{"text":"    ","color":"white"},{"text":"予 言 者","color":"aqua"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfSeers"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/fake_seer] ["",{"text":"    ","color":"white"},{"text":"偽予言者","color":"aqua"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfFkSeers"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/sage] ["",{"text":"    ","color":"white"},{"text":"賢    者","color":"aqua"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfSages"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/medium] ["",{"text":"    ","color":"white"},{"text":"霊 媒 師","color":"yellow"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfMediums"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/detective] ["",{"text":"    ","color":"white"},{"text":"探    偵","color":"dark_aqua"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfDetectives"},"color":"white"},{"text":"人","color":"white"}]

tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/thief] ["",{"text":"    ","color":"white"},{"text":"怪    盗","color":"blue"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfThieves"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/little_red] ["",{"text":"    ","color":"white"},{"text":"赤ずきん","color":"gold"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfLtReds"},"color":"white"},{"text":"人","color":"white"}]
tellraw @a[predicate=mwj:system/setting_phase/choose_role/chosen_role/cat] ["",{"text":"    ","color":"white"},{"text":"猫    又","color":"gold"},{"text":" ： ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfCats"},"color":"white"},{"text":"人","color":"white"}]