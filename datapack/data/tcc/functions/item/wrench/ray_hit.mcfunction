############################################################
# Commands for when the wrench's ray hits
############################################################

execute unless entity @e[tag=global.ignore,type=armor_stand,dx=0,dz=0,dy=1] if predicate tcc:item/wrench_rotate run function tcc:item/wrench/rotate/main
execute if entity @e[tag=tcc.block,tag=tcc.block_breaker,tag=tcc.block_breaker.enchanted,type=armor_stand,dx=0,dz=0,dy=1] run function tcc:item/wrench/breaker_enchantments/load
