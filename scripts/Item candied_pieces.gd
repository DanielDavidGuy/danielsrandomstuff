extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "candied_pieces"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Candied Pieces"
	localized_names = {}
	description = "<group_chessall> and <last_chessall> give <text_color_keyword>2x<end> more <icon_coin> when adjacent to <icon_toddler> or <icon_chef>."
	localized_descriptions = {}
	values = []
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [	]