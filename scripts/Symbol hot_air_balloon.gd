extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "hot_air_balloon"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Hot Air Balloon"
	localized_names = {}
	value = 1
	description = "Gives <text_color_keyword><value_1>x<end> more <icon_coin> for each row below it. <text_color_keyword>Destroys<end> adjacent <icon_fire>. Permanently gives <icon_coin><color_FBF236><value_2><end> more for each symbol <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [1.5, 1]
	rarity = "rare"
	groups = ["monkeylikes", "gravity_low", "scaler"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "fire"},
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "fire"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": values[1]
		},
		{
			"comparisons": [
				{"a": "grid_position_y", "b": 0}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]*values[0]*values[0]
		},
		{
			"comparisons": [
				{"a": "grid_position_y", "b": 1}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]*values[0]
		},
		{
			"comparisons": [
				{"a": "grid_position_y", "b": 2}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]