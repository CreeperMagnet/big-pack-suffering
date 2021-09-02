############################################################
# Commands for when a player edits a spawner using a spawn egg
############################################################

scoreboard players set @s tcc.dummy 0
execute anchored eyes run function tcc:block/spawner_edit/raycast
advancement revoke @s only tcc:technical/block/spawner_edit
