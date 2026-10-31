extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "final_boss"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Final Boss"
	localized_names = {}
	description = "<group_bosslikes> and <last_bosslikes> give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [2]
	rarity = "rare"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "bosslikes"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]