extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "squirrel"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Squirrel"
	localized_names = {}
	value = 1
	description = "Adjacent <group_trees> and <last_trees> give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [2]
	value_text = {}
	rarity = "common"
	groups = ["animal", "organism", "critter"]
	sfx = ["jump"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "trees"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "dogpant",
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]