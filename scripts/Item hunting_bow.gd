extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "hunting_bow"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Hunting Bow"
	localized_names = {}
	value = 0
	description = "Gives <icon_coin><color_FBF236><value_1><end> whenever <group_monster> or <last_monster> are <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [6]
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "value",
			"diff": values[0]
		},
	]