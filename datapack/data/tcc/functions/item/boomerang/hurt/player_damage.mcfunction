############################################################
# Damages a player for two hearts (4.0 health)
############################################################

scoreboard players set tcc.damage tcc.dummy 40
scoreboard players set tcc.ignore_armor tcc.dummy 0
tag @s add tcc.damage.boomerang
function tcc:entity/player/damage/calculate
