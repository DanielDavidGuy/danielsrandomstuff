extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "mimic"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Mimic"
	localized_names = {}
	value = 0	
	description = "Gives <icon_coin><color_FBF236><value_2><end> when <text_color_keyword>destroyed<end>. <text_color_keyword>Removes<end> adjacent <icon_coin>. Gives an additional <icon_coin><color_FBF236><value_1><end> when <text_color_keyword>destroyed<end> for each <icon_coin> <text_color_keyword>removed<end>."
	localized_descriptions = {}
	values = [25, 75]	
	value_text = {"color": "symbol_reminder_up_text", "value": {"starting_value": values[1], "var_math": [{"+": "saved_value"}]}}
	rarity = "none"
	groups = ["monster", "box", "bosslikes", "destroymon"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "coin"},
			],
			"value_to_change": "removed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "teehee"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "coin"},
				{"a": "removed", "b": true}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": values[0]
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "value_bonus",
			"diff": {"var_math": [
				{"+": values[1]},
				{"+": "saved_value"}
			]}
		}
	]
	inherited_effects = [
		"militia_essence_effect"
	]