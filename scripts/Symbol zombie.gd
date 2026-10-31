extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "zombie"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Zombie"
	localized_names = {}
	value = 0
	description = "<text_color_keyword>Converts<end> adjacent <group_zlikes> and <last_zlikes> into <icon_zombie>. Permanently gives <icon_coin><color_FBF236><value_1><end> for each symbol <text_color_keyword>converted<end>. Gives <icon_coin><color_FBF236><value_3><end> more if there are at least <text_color_keyword><value_2><end> <icon_zombie>."
	localized_descriptions = {}
	values = [1, 6, 1]
	value_text = {}
	rarity = "uncommon"
	groups = ["monster", "organism", "undead", "cemlikes", "night", "witchlikes", "scaler", "bosslikes", "destroymon"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "zlikes", "not_prev": true},
				{"a": "type", "b": "zombie", "target_self": true, "not_prev": true},
				{"a": "type", "b": "zombie", "not": true}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": values[0],
			"not_prev": false
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "zlikes", "not_prev": true},
				{"a": "type", "b": "zombie", "target_self": true, "not_prev": true},
				{"a": "type", "b": "zombie", "not": true}
			],
			"value_to_change": "type",
			"diff": "zombie",
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "eldritch",
			"not_prev": false
		},
		{
			"comparisons": [
				{"a": {"counted_symbols": "zombie"}, "b": values[1], "greater_than_eq": true}
			],
			"value_to_change": "value_bonus",
			"diff": values[2]
		}
	]
	inherited_effects = [
		"militia_essence_effect"
	]