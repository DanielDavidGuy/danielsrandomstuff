extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "plant_food"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Plant Food"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Destroys<end> itself when adjacent to <icon_flower> <group_trees> or <last_trees>. Adjacent <icon_flower> <group_trees> and <last_trees> permanently give <icon_coin><color_FBF236><value_1><end> more."
	localized_descriptions = {}
	values = [2]
	value_text = {}
	rarity = "none"
	groups = []
	sfx = []
	effects = [		
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "trees"}
			],
			"value_to_change": "permanent_bonus",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "farmer"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "trees"}
			],
			"target_self": true,
			"value_to_change": "destroyed",
			"diff": true,
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "flower"}
			],
			"value_to_change": "permanent_bonus",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "farmer"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "flower"}
			],
			"target_self": true,
			"value_to_change": "destroyed",
			"diff": true,
		}
	]