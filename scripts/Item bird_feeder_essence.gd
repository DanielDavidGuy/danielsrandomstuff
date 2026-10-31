extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "bird_feeder_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Bird Feeder"
	localized_names = {}
	value = 0
	description = "Destroys itself after <text_color_keyword><value_1><end> <icon_seed> are <text_color_keyword>removed<end>. <text_color_keyword>Removes<end> all <icon_seed> before each spin. When <text_color_keyword>destroyed<end>, <group_bird> and <last_bird> give <text_color_keyword><value_2>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [3, 2]
	value_text = {"color": "item_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "essence"
	groups = ["essence"]
	symbols_removed_pre_spin = [{"type": "seed"}]
	sfx = []
	effects = [
		{
			"value_to_change": "saved_value",
			"diff": {"starting_value": "symbols_removed_this_spin"}
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": values[0], "greater_than_eq": true}
			],
			"value_to_change": "destroyed",
			"diff": true
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			"diff": {"groups": "bird", "multiplier": values[1]}
		}
	]