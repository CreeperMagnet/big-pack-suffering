############################################################
# Checks if a ring has the proper materials
############################################################

execute if data storage tcc:storage root.temp.gemstone{id:"minecraft:diamond"} run function tcc:item/item_modification/ring/add_gemstone/materials/diamond/main
