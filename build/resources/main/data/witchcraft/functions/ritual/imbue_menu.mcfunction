tellraw @s [{"text":"\nYou should not click on any text above this!\n\n","color":"red"},{"text":"                                               ","color":"dark_gray","strikethrough":true}]

tellraw @p {"text":"-------------------[ Instructions ]-------------------", "color":"#ff00ff"}

data modify storage wc:tmp list set from entity @e[nbt={Tags:["wc.imbuing"]},distance=..4,limit=1] Item.tag.instructions
function witchcraft:ritual/imbue_menu_lines

data remove storage wc:tmp new_line
data remove storage wc:tmp run_line
data remove storage wc:tmp list

tellraw @s ""
tellraw @s ["",{"text":" summon ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger wc.trigger set -100"}}, {"text":" damage ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger wc.trigger set -101"}}, {"text":" effect ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger wc.trigger set -102"}}]
tellraw @s ["",{"text":" [Remove Line] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger wc.trigger set -2"}}, {"text":" [Finish] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger wc.trigger set -1"}}]