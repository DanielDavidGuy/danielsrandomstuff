extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "frog"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Frog"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Destroys<end> adjacent <group_slimenormal> and <last_slimenormal>. Gives <icon_coin><color_FBF236><value_1><end> for each <group_slimenormal> and <last_slimenormal> <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [8]
	value_text = {}
	rarity = "uncommon"
	groups = ["poslikes", "animal", "organism", "aqua", "witchlikes", "uncommonanimals", "frogs"]
	sfx = ["jump"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "slimenormal"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump",
			"item_to_destroy": "gorf_the_bewitched_frog_essence"
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "slimenormal"}, 
				{"a": "destroyed", "b": true}
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": values[0]
		},
		{
			"required_items": ["gorf_the_bewitched_frog"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "hex"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump",
			"item_to_destroy": "gorf_the_bewitched_frog_essence"
		},
		{
			"required_items": ["gorf_the_bewitched_frog"],
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "hex"}, 
				{"a": "destroyed", "b": true}
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": 16
		},
	]