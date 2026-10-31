extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "roshambo"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Roshambo"
	localized_names = {}
	description = "<icon_rock> <text_color_keyword>destroys<end> adjacent <icon_scissors>. <icon_scissors> <text_color_keyword>destroys<end> adjacent <icon_paper>. <icon_paper> <text_color_keyword>destroys<end> adjacent <icon_rock>. <icon_rock> <icon_paper> and <icon_scissors> give <icon_coin><color_FBF236>25<end> for each symbol <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = []
	rarity = "common"
	groups = []
	sfx = []
	effects = [	]