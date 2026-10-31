extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "bottled_lightning_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Bottled Lightning"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself when <icon_lightning> is <text_color_keyword>destroyed<end>. Symbols in the same column as <icon_lightning> give <text_color_keyword>3x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [3]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [	]