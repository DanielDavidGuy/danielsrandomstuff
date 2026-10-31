extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "skeleton"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Skeleton"
	localized_names = {}
	value = 0
	description = "<text_color_keyword>Destroyed<end> by adjacent <icon_stick> and <icon_rock>, which <text_color_keyword>destroy<end> themselves afterwards. <text_color_keyword>Adds<end> <icon_bone_pile> when <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = []
	value_text = {}
	rarity = "uncommon"
	groups = ["monster", "organism", "undead", "arch2likes", "franklikes", "cemlikes", "bony", "night", "witchlikes", "bosslikes", "destroymon"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "sticknstone"}
			],
			"target_self": true,
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "rockbreak"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "sticknstone"}
			],
			"value_to_change": "destroyed",
			"diff": true
		},
		{
			"comparisons": [
				{"a": "tbd", "b": true}
			],
			"tiles_to_add": [
				{"type": "bone_pile"}
			],
		}
	]
	inherited_effects = [
		"militia_essence_effect"
	]