extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "orange_feather"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Orange Feather"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Transforms<end> into <icon_phoenix> when adjacent to <icon_ash>, which <text_color_keyword>destroys<end> itself afterwards."
	localized_descriptions = {}
	values = []
	rarity = "rare"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "phoenix", "target_self": true, "not": true, "not_prev": true},
				{"a": "type", "b": "ash"},
			], 
			"value_to_change": "destroyed",
			"diff": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "phoenix", "target_self": true, "not": true, "not_prev": true},
				{"a": "type", "b": "ash"}
			], 
			"target_self": true,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "beam",
			"value_to_change": "type", 
			"diff": "phoenix"
		},
	]