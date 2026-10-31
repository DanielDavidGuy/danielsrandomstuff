extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "woodcutting_axe"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Woodcutting Axe"
	localized_names = {}
	value = 0
	description = "Gives <icon_coin><color_FBF236><value_1><end> whenever <group_trees> or <last_trees> are <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [10]
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "trees"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "value",
			"diff": 10
		},
	]