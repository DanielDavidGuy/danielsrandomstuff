extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "oxygen_gas"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Oxygen Gas"
	localized_names = {}
	description = "<icon_fire> <text_color_keyword>adds<end> <icon_fire> for each symbol it <text_color_keyword>destroys<end>."
	localized_descriptions = {}
	values = []
	rarity = "common"
	groups = []
	sfx = []
	effects = [	]