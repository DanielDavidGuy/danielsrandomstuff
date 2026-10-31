extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "bird_feeder"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Bird Feeder"
	localized_names = {}
	value = 0
	description = "Puts all <icon_seed> in this item before each spin. For each <icon_seed> inside this item, <group_bird> and <last_bird> give <icon_coin><color_FBF236><value_1><end> more."
	localized_descriptions = {}
	values = [1]
	value_text = {"color": "item_reminder_up_text", "value": {"starting_value": 0, "var_math": [{"+": "saved_value"}]}}
	rarity = "uncommon"
	groups = []
	symbols_removed_pre_spin = [{"type": "seed"}]
	sfx = []
	effects = [
		{
			"value_to_change": "saved_value",
			"diff": {"starting_value": "symbols_removed_this_spin"}
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "bird"}
			],
			"value_to_change": "value_bonus",
			"diff": {"starting_value": 0, "var_math": [{"+": "saved_value", "target_self": true}, {"*": values[0], "target_self": true}]}
		}
	]