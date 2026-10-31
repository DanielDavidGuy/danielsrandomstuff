extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "caveman"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Caveman"
	localized_names = {}
	value = 2
	description = "Adjacent <group_cavelikes> and <last_cavelikes> give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [2]
	rarity = "uncommon"
	groups = ["human", "organism", "doglikes", "zlikes"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "cavelikes"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "beastmaster",
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]