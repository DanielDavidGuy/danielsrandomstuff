extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "storm_cloud"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Storm Cloud"
	localized_names = {}
	description = "<group_weatherlikes> and <last_weatherlikes> give <icon_coin><color_FBF236><value_1><end> more. Has a <text_color_keyword><value_2>%<end> chance of adding <icon_lightning> every spin."
	localized_descriptions = {}
	values = [1, 4]
	rarity = "rare"
	groups = []
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": {"rand_num": {"min": 1, "max": 100}}}, "b": values[1], "less_than_eq": true},
			],
			"tiles_to_add": [
				{"type": "lightning"}
			]
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "weatherlikes"}
			],
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
	]