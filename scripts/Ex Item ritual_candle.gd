extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_item"
	type = "ritual_candle"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	display_name = "Ritual Candle"
	localized_names = {}
	description = "<group_candles> and <last_candles> give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [2]
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "candles"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]