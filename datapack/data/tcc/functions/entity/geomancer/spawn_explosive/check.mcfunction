############################################################
# Summons a pillar if the conditions are right
############################################################

execute unless entity @e[team=global.antivil,dx=0,dy=2,dz=0] if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable if block ~ ~1 ~ #tcc:replaceable if block ~ ~2 ~ #tcc:replaceable run function tcc:entity/geomancer/spawn_explosive/place
