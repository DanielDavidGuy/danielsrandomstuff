extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "aquarium"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Aquarium"
	localized_names = {}
	value = 0
	description = "Puts all <group_watery> and <last_watery> in this item before each spin. For each <group_watery> and <last_watery> inside this item, <group_aqua> and <last_aqua> give <icon_coin><color_FBF236><value_1><end> more."
	localized_descriptions = {}
	values = [1]
	value_text = {"color": "item_reminder_up_text", "value": {"starting_value": 0, "var_math": [{"+": "saved_value"}]}}
	rarity = "uncommon"
	groups = []
	symbols_removed_pre_spin = [{"groups": "watery"}]
	sfx = []
	effects = [
		{
			"value_to_change": "saved_value",
			"diff": {"starting_value": "symbols_removed_this_spin"}
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "aqua"}
			],
			"value_to_change": "value_bonus",
			"diff": {"starting_value": 0, "var_math": [{"+": "saved_value", "target_self": true}, {"*": values[0], "target_self": true}]}
		}
	]