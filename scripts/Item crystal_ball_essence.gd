extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "crystal_ball_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Crystal Ball"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself when <icon_spirit> is <text_color_keyword>destroyed<end>. When <text_color_keyword>destroyed<end>, at least <text_color_keyword>2<end> of the symbols to <text_color_keyword>add<end> after this spin will be <text_color_very_rare>Very Rare<end>."
	localized_descriptions = {}
	values = []
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "spirit"},
				{"a": "destroyed", "b": true}
			],
			"item_to_destroy": "crystal_ball_essence",
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"forced_rarities": {"symbols": ["very_rare", "very_rare"]}
		},
	]