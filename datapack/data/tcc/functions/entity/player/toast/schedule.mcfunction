############################################################
# Schedules removal of a toast
############################################################

schedule function tcc:entity/player/toast/revoke 2t replace
tag @s add tcc.toasts.scheduled
