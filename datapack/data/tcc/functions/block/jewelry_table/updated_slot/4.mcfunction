############################################################
# Commands for when a slot is updated
############################################################

execute if entity @s[tag=tcc.jewelry_table.assembled_output] run function tcc:block/jewelry_table/export_slot/clear_input
execute if data entity @s ArmorItems[3].tag.tcc.stored_slots[4].id run function tcc:block/jewelry_table/export_slot/4
