extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "windmill"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Windmill"
	localized_names = {}
	description = "<icon_wind> give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [1.5]
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "wind"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]