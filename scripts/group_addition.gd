extends "res://Mod Data.gd"

func _init():
	mod_type = "group_addition"
	effects = [
		{"trash": ["anchor", "beer", "candy", "cheese", "egg", "key", "banana_peel"]}, 
		{"zlikes": ["bartender", "beastmaster", "billionaire", "card_shark", "comedian", "cultist", "dame", "diver", "dwarf", "farmer", "gambler", "joker", "king_midas", "archaeologist", "miner", "mrs_fruit", "thief", "robin_hood", "general_zaroff", "ninja"]},
		{"newsworthy": ["billionaire", "general_zaroff", "king_midas"]},
		{"hatted": ["cultist", "diver", "farmer", "joker", "king_midas", "archaeologist"]},
		{"aqua": ["crab", "goldfish", "jellyfish", "oyster", "pufferfish", "sand_dollar", "snail", "turtle"]},
		{"game": ["clubs", "hearts", "diamonds", "spades", "d3", "d5", "coin", "target"]},
		{"poker": ["clubs", "hearts", "diamonds", "spades", "joker"]},
		{"flammable": ["flower", "seed"]},
		{"keys": ["key", "magic_key"]},
		{"royal": ["king_midas", "dame"]},
		{"gardenlikes": ["flower"]},
		{"magic": ["magic_key"]},
		{"critter": ["mouse"]},
		{"windweak": ["rabbit_fluff"]},
		{"commonoredrops": ["shiny_pebble", "pearl", "sapphire"]},
		{"cartadds": ["ore", "big_ore"]},
		{"festive": ["present"]},
		{"destroymon": ["thief"]},
		{"cavelikes": ["shiny_pebble"]},
		{"xray": ["ore", "big_ore"]},
		{"monster": ["thief", "witch", "eldritch_beast"]},
		{"bosslikes": ["thief", "witch", "eldritch_beast"]},
		{"raremon": ["witch", "eldritch_beast"]},
		{"palmadds": ["banana", "coconut"]},
		{"connlikes": ["ruby", "emerald", "amethyst", "diamond", "apple", "strawberry", "pear", "watermelon", "omelette", "honey", "golden_egg", "martini"]},
		{"uncommonanimals": ["void_creature", "sloth", "chick", "sand_dollar", "pufferfish", "chicken", "jellyfish", "bear", "dove", "cow", "eldritch_beast"]},
	]