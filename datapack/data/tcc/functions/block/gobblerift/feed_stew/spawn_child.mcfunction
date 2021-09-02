############################################################
# Attempts to spawn a child for a gobblerift
############################################################

execute store success score @s tcc.dummy if predicate tcc:block/gobblerift_valid align xyz unless entity @e[type=wandering_trader,tag=tcc.gobblerift,dx=0,dz=0,dy=1] positioned ~ ~-1 ~ run function tcc:block/gobblerift/place/summon
