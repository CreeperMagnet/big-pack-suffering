############################################################
# Damages a player with explosives
############################################################

scoreboard players set tcc.ignore_armor tcc.dummy 0
tag @s add tcc.damage.geomancer_explosive
function tcc:entity/player/damage/calculate
