############################################################
# Closes your elytra when shifting
############################################################

execute as @a[tag=tcc.schedule.elytra_close] run item modify entity @s armor.chest tcc:elytra_open
tag @a remove tcc.schedule.elytra_close
