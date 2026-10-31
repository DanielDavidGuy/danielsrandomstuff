extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "stockfish"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Stockfish"
	localized_names = {}
	value = 4
	description = "Adjacent <group_chess> and <last_chess> give <text_color_keyword><value_3>x<end> more <icon_coin>. Permanently gives <icon_coin><color_FBF236><value_1><end> more when an adjacent <group_chess> or <last_chess> gives <icon_coin><color_FBF236><value_2><end> or more."
	localized_descriptions = {}
	values = [1, 16, 2]
	rarity = "very_rare"
	groups = ["organism", "animal", "aqua", "uncommonanimals", "scaler"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "chess"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[2],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "dice"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "chess"},
				{"a": "final_value", "b": values[1], "greater_than_eq": true}
			], 
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": values[0],
		},
	]