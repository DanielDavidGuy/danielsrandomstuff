extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "avatar"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "The Avatar"
	localized_names = {}
	value = 4
	description = "Adjacent <group_waterbend> <last_waterbend> <group_earthbend> <last_earthbend> <group_firebend> <last_firebend> <icon_wind> <icon_empty> and <icon_spirit> give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [4]
	rarity = "very_rare"
	groups = ["human", "organism", "doglikes", "newsworthy"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "waterbend"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "drops",
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "earthbend"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "rockroll",
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "firebend"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "sizzle",
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "empty"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "wind"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "windwoosh_STEAM_ID_76561199168782209_",
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "spirit"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "spirit",
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]