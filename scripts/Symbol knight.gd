extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "knight"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Knight"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Destroys<end> adjacent <group_monster> and <last_monster>. Permanently gives <icon_coin><color_FBF236><value_1><end> for each symbol <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [1]
	rarity = "very_rare"
	groups = ["human", "organism", "doglikes", "hatted", "scaler"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"},
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "guillotine"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": values[0]
		}
	]