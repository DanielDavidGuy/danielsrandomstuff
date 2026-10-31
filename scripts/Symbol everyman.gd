extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "everyman"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Everyman"
	localized_names = {}
	value = 1
	description = "When adjacent to <group_human> or <last_human>, <text_color_keyword>transforms<end> into that symbol. Cannot <text_color_keyword>transform<end> into <icon_everyman>."
	localized_descriptions = {}
	values = []
	rarity = "uncommon"
	groups = ["organism", "doglikes", "zlikes", "human", "student"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "human"},
				{"a": "type", "b": "everyman", "not_prev": true, "target_self": true},
				{"a": "type", "b": "everyman", "not": true}
			],
			"target_self": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "mmm",
			"value_to_change": "type",
			"diff": {"starting_value": "type"},
		},
	]