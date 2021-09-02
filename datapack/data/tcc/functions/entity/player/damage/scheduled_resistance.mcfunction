############################################################
# Removes resistance
############################################################

execute as @a[tag=tcc.scheduled.resistance] run function tcc:entity/player/damage/remove_resistance
tag @a remove tcc.scheduled.resistance
