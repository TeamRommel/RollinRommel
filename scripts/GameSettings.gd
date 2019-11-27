extends Node

var no_of_players: int = 0
var no_of_humans: int = 0
var current_level: int = 0
var players: Array = []
var player_class = preload("PlayerData.gd")

func _init():
	var p1 = player_class.new("Monty", 0, false)
	var cpu = player_class.new("Erwin", 1, true, 300)
	var cpu2 = player_class.new("Ludwig", 2, true, 225)
	var cpu3 = player_class.new("Patton", 3, true, 200)
	add_player(p1)
	add_player(cpu)
	add_player(cpu2)
	add_player(cpu3)

func complete_level():
	current_level += 1
	
func get_players():
	return players
	
func add_player(player):
	players.append(player)

# Player objects created with new() must be manually removed on quit.
func _exit_tree():
	for player in players:
		player.free()