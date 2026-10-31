extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "glass"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Glass"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Destroys<end> itself when an adjacent symbol is <text_color_keyword>destroyed<end>. Gives <icon_coin><color_FBF236><value_1><end> for each adjacent <icon_glass>"
	localized_descriptions = {}
	values = [2]
	rarity = "common"
	groups = ["trash", "glasss"]
	sfx = []
	effects = [	
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "tbd", "b": true},
			],
			"target_self": true,
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "lightbulbbreak",
			"unconditional": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "glass"}
			],
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
		{
			"required_items": ["glass_cannon"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "tbd", "b": true, "target_self": true}
			],
			"value_to_change": "value_multiplier",
			"diff": 3
		}
	]