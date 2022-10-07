####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Number the Members

#### The players' number, that is equal to the GM's number,
####  is incremented by 1.
execute as @a[predicate=mwj:player/player] if score @s NumOfPlayers = #MWL CurrentRole run scoreboard players add @s NumOfPlayers 1

#### The GM's number is incremented by 1.
scoreboard players add #MWL CurrentRole 1

#### One random player's number, that is equal to the GM's number,
####  is decremented by 1.
execute as @p[tag=!numbered,team=Player,sort=random] if score @s NumOfPlayers = #MWL CurrentRole run scoreboard players remove @s NumOfPlayers 1

#### If the players' number is NOT equal to the GM's number,
####  these players are put a tag of 'numbered'.
execute as @a[predicate=mwj:player/player] unless score @s NumOfPlayers = #MWL CurrentRole run tag @s add numbered
