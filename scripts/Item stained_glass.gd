extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "stained_glass"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Stained Glass"
	localized_names = {}
	description = "<icon_glass> gives <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [1.5]
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "glass"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		}
	]