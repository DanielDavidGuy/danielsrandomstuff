extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "bounty_hunter"
	inherit_effects = false
	inherit_art = true
	inherit_groups = true
	display_name = "Bounty Hunter"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Destroys<end> adjacent <group_monster> and <last_monster>. Gives <icon_coin><color_FBF236>10<end> for each symbol <text_color_keyword>destroyed<end>. Gives an additional <icon_coin><color_FBF236>25<end> for each <group_raremon> and <last_raremon> <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = []
	rarity = "rare"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"},
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "beatup"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": 10
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "thief"},
				{"a": "destroyed", "b": true}
			],
			"item_to_destroy": "wanted_poster_essence"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "raremon"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": 25
		},
		{
			"required_items": ["zaroffs_contract"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "human"},
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "beatup"
		},
		{
			"required_items": ["zaroffs_contract"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "human"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": 20
		},
	]