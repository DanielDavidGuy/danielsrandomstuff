extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "herdsman"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Herdsman"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Removes<end> adjacent <group_animal> and <last_animal>. <text_color_keyword>Removes<end> itself and gives <icon_coin><color_FBF236><value_1><end> after <text_color_keyword>removing <value_2><end> symbols."
	localized_descriptions = {}
	values = [100, 6]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[1], "var_math": [{"-": "saved_value"}]}}
	rarity = "uncommon"
	groups = ["human", "organism", "doglikes", "hatted", "zlikes"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "animal"},
			],
			"value_to_change": "removed",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "whistle"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "animal"},
				{"a": "removed", "b": true}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": 1,
			"push_front": true
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": values[1], "greater_than_eq": true, "target_self": true}
			], 
			"target_self": true,
			"value_to_change": "removed",
			"diff": true,
			"anim": "bounce",
			"sfx_override": "jump"
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": values[1], "greater_than_eq": true, "target_self": true}
			], 
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": values[0],
		},
	]