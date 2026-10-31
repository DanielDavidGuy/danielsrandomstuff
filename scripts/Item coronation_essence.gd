extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "coronation_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Coronation"
	localized_names = {}
	description = "<icon_checkers_piece> that permanently give <icon_coin><color_FBF236>2<end> or more <text_color_keyword>transform<end> into <icon_checkers_king>. <text_color_keyword>Destroys<end> itself when <icon_checkers_piece> is <text_color_keyword>transformed<end>."
	localized_descriptions = {}
	values = [2]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "checkers_piece"},
				{"a": "permanent_bonus", "b": 2, "greater_than_eq": true}
			],
			"value_to_change": "type",
			"diff": "checkers_king",
			"anim": "circle",
			"sfx_override": "shine",
			"item_to_destroy": "coronation_essence"
		},
	]