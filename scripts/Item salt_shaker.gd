extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "salt_shaker"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Salt Shaker"
	localized_names = {}
	description = "<group_slime> and <last_slime> have a <text_color_keyword><value_1>%<end> chance to automatically trigger their <text_color_keyword>destruction<end> effects without being <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [30]
	rarity = "very_rare"
	groups = []
	sfx = []
	effects = [	]