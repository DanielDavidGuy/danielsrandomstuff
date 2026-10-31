extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "lumberjack"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Lumberjack"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Destroys<end> adjacent <group_trees> and <last_trees>. Gives <icon_coin><color_FBF236><value_1><end> for each <group_trees> and <last_trees> <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [16]
	value_text = {}
	rarity = "uncommon"
	groups = ["human", "organism", "doglikes", "zlikes", "hatted"]
	sfx = ["jump"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "trees"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "rockbreak"
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "trees"}, 
				{"a": "destroyed", "b": true}
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": values[0]
		},
	]