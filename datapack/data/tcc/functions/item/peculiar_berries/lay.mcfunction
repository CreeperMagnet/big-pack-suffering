############################################################
# Makes chickens lay eggs properly
############################################################

loot spawn ~ ~ ~ loot tcc:gameplay/peculiar_berries/spawn_roll
playsound entity.chicken.egg neutral @a[distance=..16]
data merge entity @s {EggLayTime:6000}
