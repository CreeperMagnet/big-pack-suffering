############################################################
# Commands to run right when a block breaker is powered
############################################################

execute positioned ~ ~-.5 ~ if entity @e[type=item,predicate=tcc:block/block_breakers/accepted_enchanted_book,dz=0,dx=0,dy=0,tag=!global.ignore] run function tcc:block/block_breakers/enchant
scoreboard players reset @s tcc.dummy2

tag @s add tcc.block_breaker.powered
scoreboard players set @s[tag=!tcc.tag] tcc.dummy 5
tag @s[tag=!tcc.tag] add tcc.scheduled.block_breaker

tag @s remove tcc.tag
