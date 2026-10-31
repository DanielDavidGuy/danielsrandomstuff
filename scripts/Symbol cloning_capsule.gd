extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "cloning_capsule"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Cloning Capsule"
	localized_names = {}
	value = 0
	description = "<text_color_keyword>Transforms<end> into a copy of a random adjacent symbol. Cannot <text_color_keyword>transform<end> into <icon_cloning_capsule>."
	localized_descriptions = {}
	values = []
	rarity = "uncommon"
	groups = ["capsule"]
	sfx = []
	effects = [
		{
			"effect_type": "rand_adjacent_symbol",
			"comparisons": [
				{"a": "type", "b": "cloning_capsule", "not_prev": true, "target_self": true},
				{"a": "type", "b": "cloning_capsule", "not": true}
			],
			"target_self": true,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "growtime",
			"value_to_change": "type",
			"diff": {"starting_value": "type"},
		},
	]