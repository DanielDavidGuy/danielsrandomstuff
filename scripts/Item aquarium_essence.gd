extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "aquarium_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Aquarium"
	localized_names = {}
	value = 0
	description = "Destroys itself after <text_color_keyword><value_1><end> <group_watery> or <last_watery> are <text_color_keyword>removed<end>. <text_color_keyword>Removes<end> all <group_watery> and <last_watery> before each spin. When <text_color_keyword>destroyed<end>, <group_aqua> and <last_aqua> give <text_color_keyword><value_2>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [3, 2]
	value_text = {"color": "item_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "essence"
	groups = ["essence"]
	symbols_removed_pre_spin = [{"groups": "watery"}]
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
			"diff": {"groups": "aqua", "multiplier": values[1]}
		}
	]