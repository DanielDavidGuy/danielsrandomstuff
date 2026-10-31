extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "seance_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Séance"
	localized_names = {}
	description = "<group_organism> and <last_organism> permanently give <text_color_keyword>1.5x<end> more <icon_coin> for each adjacent <icon_spirit>. <text_color_keyword>Destroys<end> itself when this effect is applied."
	localized_descriptions = {}
	values = []
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [	]