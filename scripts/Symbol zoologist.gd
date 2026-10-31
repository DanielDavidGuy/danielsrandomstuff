extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "zoologist"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Zoologist"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Removes<end> adjacent <group_animal> and <last_animal>. Permanently gives <icon_coin><color_FBF236><value_1><end> for each symbol <text_color_keyword>removed<end>."
	localized_descriptions = {}
	values = [1]
	rarity = "very_rare"
	groups = ["human", "organism", "doglikes", "hatted", "zlikes", "scaler"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "animal"},
			],
			"value_to_change": "removed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "animal"},
				{"a": "removed", "b": true}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": values[0]
		}
	]