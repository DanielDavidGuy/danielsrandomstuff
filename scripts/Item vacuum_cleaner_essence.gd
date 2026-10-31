extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "vacuum_cleaner_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Vacuum Cleaner"
	localized_names = {}
	value = 0
	description = "Destroys itself after <text_color_keyword><value_1><end> <group_trash> or <last_trash> are <text_color_keyword>removed<end>. <text_color_keyword>Removes<end> all <group_trash> and <last_trash> before each spin. Gives <icon_coin><color_FBF236><value_2><end> whenever <group_trash> or <last_trash> are removed."
	localized_descriptions = {}
	values = [10, 6]
	value_text = {"color": "item_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "essence"
	groups = ["essence"]
	symbols_removed_pre_spin = [{"groups": "trash"}]
	sfx = []
	effects = [
		{
			"value_to_change": "saved_value",
			"diff": {"starting_value": "symbols_removed_this_spin"}
		},
		{
			"value_to_change": "value",
			"last": true,
			"diff": {"starting_value": "symbols_removed_this_spin", "var_math": [{"*": values[1]}]}
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": values[0], "greater_than_eq": true}
			],
			"value_to_change": "destroyed",
			"diff": true
		},
	]