extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "terracotta_soldier"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Terracotta Soldier"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Destroys<end> adjacent <group_monster> and <last_monster>. Gives <icon_coin><color_FBF236><value_1><end> for each symbol <text_color_keyword>destroyed<end>. <text_color_keyword>Destroys<end> itself after <text_color_keyword>destroying <value_2><end> symbols."
	localized_descriptions = {}
	values = [12, 6]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[1], "var_math": [{"-": "saved_value"}]}}
	rarity = "uncommon"
	groups = ["organism"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"},
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "hooligan"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": 1,
			"push_front": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": values[1], "greater_than_eq": true, "target_self": true}
			], 
			"target_self": true,
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"sfx_override": "rockroll"
		},
	]