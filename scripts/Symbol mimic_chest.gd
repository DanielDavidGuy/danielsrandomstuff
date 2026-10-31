extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "mimic_chest"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Treasure Chest"
	localized_names = {}
	value = 2
	description = "Gives <icon_coin><color_FBF236>50<end> when <text_color_keyword>destroyed<end>?"
	localized_descriptions = {}
	values = []
	rarity = "rare"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "magic_key"}
			],
			"value_to_change": "destroyed",
			"diff": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "magic_key"}
			],
			"target_self": true,
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "unlock"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "key"}
			],
			"value_to_change": "destroyed",
			"diff": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "key"}
			],
			"target_self": true,
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "unlock"
		},
		{
			"required_items": ["lockpick"],
			"forbidden_items": ["lockpick_essence"],
			"comparisons": [
				{"a": {"starting_value": {"rand_num": {"min": 1, "max": 100}}}, "b": 35, "less_than_eq": true}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"sfx_override": "unlock"
		},
		{
			"required_items": ["lockpick_essence"],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"sfx_override": "unlock"
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"tiles_to_add": [
				{"type": "mimic"}
			],
			"anim": "bounce",
			"sfx_override": "teehee"
		}
	]