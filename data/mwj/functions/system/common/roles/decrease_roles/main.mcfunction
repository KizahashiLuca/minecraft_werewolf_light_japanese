####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## If the Number is Short
execute if predicate mwj:system/common/roles/decrease_roles/wolf run function mwj:system/common/roles/decrease_roles/roles/wolf
execute if predicate mwj:system/common/roles/decrease_roles/clever_wolf run function mwj:system/common/roles/decrease_roles/roles/clever_wolf
execute if predicate mwj:system/common/roles/decrease_roles/white_wolf run function mwj:system/common/roles/decrease_roles/roles/white_wolf
execute if predicate mwj:system/common/roles/decrease_roles/madman run function mwj:system/common/roles/decrease_roles/roles/madman
execute if predicate mwj:system/common/roles/decrease_roles/fanatic run function mwj:system/common/roles/decrease_roles/roles/fanatic
execute if predicate mwj:system/common/roles/decrease_roles/fox run function mwj:system/common/roles/decrease_roles/roles/fox
execute if predicate mwj:system/common/roles/decrease_roles/immoralist run function mwj:system/common/roles/decrease_roles/roles/immoralist
execute if predicate mwj:system/common/roles/decrease_roles/villager run function mwj:system/common/roles/decrease_roles/roles/villager
execute if predicate mwj:system/common/roles/decrease_roles/bakery run function mwj:system/common/roles/decrease_roles/roles/bakery
execute if predicate mwj:system/common/roles/decrease_roles/lycanthrope run function mwj:system/common/roles/decrease_roles/roles/lycanthrope
execute if predicate mwj:system/common/roles/decrease_roles/mason run function mwj:system/common/roles/decrease_roles/roles/mason
execute if predicate mwj:system/common/roles/decrease_roles/seer run function mwj:system/common/roles/decrease_roles/roles/seer
execute if predicate mwj:system/common/roles/decrease_roles/fake_seer run function mwj:system/common/roles/decrease_roles/roles/fake_seer
execute if predicate mwj:system/common/roles/decrease_roles/sage run function mwj:system/common/roles/decrease_roles/roles/sage
execute if predicate mwj:system/common/roles/decrease_roles/medium run function mwj:system/common/roles/decrease_roles/roles/medium
execute if predicate mwj:system/common/roles/decrease_roles/detective run function mwj:system/common/roles/decrease_roles/roles/detective
execute if predicate mwj:system/common/roles/decrease_roles/thief run function mwj:system/common/roles/decrease_roles/roles/thief
execute if predicate mwj:system/common/roles/decrease_roles/little_red run function mwj:system/common/roles/decrease_roles/roles/little_red
execute if predicate mwj:system/common/roles/decrease_roles/cat run function mwj:system/common/roles/decrease_roles/roles/cat

execute if predicate mwj:system/common/roles/decrease_roles/num_of_roles/one_or_more run function mwj:system/common/roles/decrease_roles/main