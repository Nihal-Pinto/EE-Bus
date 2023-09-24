extends HBoxContainer

var route_length: int
var rng = RandomNumberGenerator.new()
@onready var games = [get_node('p1/game/game_main'), get_node('p2/game/game_main'), get_node('p2/game/game_main'), get_node('p2/game/game_main')]

func _ready():
	route_length = rng.randi_range(90, 180)
	for game in games:
		game._generate_road(route_length)

func _finish():
	pass
