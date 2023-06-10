data modify storage wc:tmp list set from entity @s SelectedItem.tag.instructions

execute as @s at @s run function witchcraft:instruction

data remove storage wc:tmp new_line
data remove storage wc:tmp run_line
data remove storage wc:tmp list