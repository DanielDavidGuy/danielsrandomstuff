extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "lightning"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Lightning"
	localized_names = {}
	value = 0
	description = "<text_color_keyword>Destroys<end> itself. Symbols in its column give <text_color_keyword><value_1>x<end> more <icon_coin>. <text_color_keyword>Adds<end> <icon_fire> when <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [8]
	rarity = "rare"
	groups = ["weatherlikes"]
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0],
			"unconditional": true
		},
		{
			"effect_type": "symbols",
			"required_items": ["bottled_lightning_essence"],
			"comparisons": [
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}}
			],
			"value_to_change": "value_multiplier",
			"diff": 3,
			"unconditional": true
		},
		{
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"sfx_override": "thunder"
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"tiles_to_add": [
				{"type": "fire"}
			],
			"item_to_destroy": "bottled_lightning_essence"
		}
	]