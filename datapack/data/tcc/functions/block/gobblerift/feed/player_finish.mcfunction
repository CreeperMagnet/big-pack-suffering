############################################################
# Replaces items and plays sounds for gobblerift stuff
############################################################

execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=minecraft:wandering_trader,tag=tcc.gobblerift.hungry] positioned ~-0.95 ~0.95 ~-0.95 at @s[dx=0,dz=0,dy=0] run function tcc:block/gobblerift/feed/finish
tag @s remove tcc.tag
execute if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand tcc:reduce_count
