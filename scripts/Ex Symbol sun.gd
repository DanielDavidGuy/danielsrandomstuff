extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "sun"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	display_name = "Sun"
	localized_names = {}
	value = 3
	description = "<text_color_keyword>Transforms<end> adjacent <group_undead> and <last_undead> into <icon_fire>."
	localized_descriptions = {}
	values = []
	rarity = "rare"
	groups = ["firebend", "newsworthy"]
	sfx = []
	effects = [
		{
			"forbidden_items": ["clear_sky"],
			"forbidden_destroyed_items": ["clear_sky_essence"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "undead"},
			],
			"value_to_change": "type",
			"diff": "fire",
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "beam"
		},
		{
			"required_items": ["clear_sky"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "undead"},
			],
			"value_to_change": "type",
			"diff": "fire",
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "beam"
		},
		{
			"forbidden_items": ["clear_sky"],
			"required_destroyed_items": ["clear_sky_essence"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "undead"},
			],
			"value_to_change": "type",
			"diff": "fire",
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "beam"
		},
	]