extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "candle_unlit"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Candle"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Transforms<end> into <icon_candle_lit> when adjacent to <icon_fire>."
	localized_descriptions = {}
	values = []
	rarity = "common"
	groups = ["trash", "candles"]
	sfx = []
	effects = [	]