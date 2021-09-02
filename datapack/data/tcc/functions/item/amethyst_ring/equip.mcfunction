############################################################
# Code to run when amethyst ring is equipped
############################################################

tag @s[predicate=tcc:entity/holding/amethyst_ring/pristine] add tcc.has_pristine_amethyst_ring
tag @s add tcc.has_amethyst_ring
advancement revoke @s only tcc:technical/item/rings/amethyst_gemstone/equip_ring
