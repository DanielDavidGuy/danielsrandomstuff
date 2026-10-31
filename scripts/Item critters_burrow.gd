extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "critters_burrow"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Rodents' Burrow"
	localized_names = {}
	description = "<group_critter> and <last_critter> give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [1.5]
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "critter"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		}
	]