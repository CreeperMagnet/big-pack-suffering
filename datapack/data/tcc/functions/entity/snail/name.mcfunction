############################################################
# Commands to run when a snail has been named Gary
############################################################

execute as @e[type=minecraft:wandering_trader,tag=tcc.snail,tag=!tcc.snail.gary,nbt={CustomName:'{"text":"Gary"}'}] run function tcc:entity/snail/named
advancement revoke @s only tcc:technical/entity/name_snail
