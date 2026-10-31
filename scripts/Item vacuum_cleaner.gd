extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "vacuum_cleaner"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Vacuum Cleaner"
	localized_names = {}
	value = 0
	description = "Puts all <group_trash> and <last_trash> in this item before each spin. Gives <icon_coin><color_FBF236><value_1><end> for each symbol in this item."
	localized_descriptions = {}
	values = [1]
	value_text = {"color": "item_reminder_up_text", "value": {"starting_value": 0, "var_math": [{"+": "saved_value"}]}}
	rarity = "rare"
	groups = []
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
			"diff": {"starting_value": "saved_value"}
		}
	]