extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "connoisseur"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Connoisseur"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Destroys<end> adjacent <group_connlikes> and <last_connlikes>. Permanently gives <icon_coin><color_FBF236><value_1><end> for each symbol <text_color_keyword>destroyed<end>. Adjacent <icon_billionaire> give <text_color_keyword><value_2>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [3, 2]
	rarity = "rare"
	groups = ["human", "organism", "doglikes", "zlikes", "newsworthy", "scaler"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "connlikes"},
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "mmm"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "connlikes"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "billionaire"},
			],
			"value_to_change": "value_multiplier",
			"diff": values[1]
		},
	]