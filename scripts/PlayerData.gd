extends Node

var player_name: String = "ACE" setget set_player_name, get_player_name
var score: int = 0
var player_id: int = 0 setget set_player_id, get_player_id
var championship_points: int = 0
var selected_vehicle: int = 0 setget set_player_vehicle, get_player_vehicle
var is_cpu: bool = false
var must_turn_dist_forward = 250
var acceleration: int = 10000
var forward_power: int = 10000
var reverse_power: int = forward_power / -2
var rotation_speed: int = 1000
var slip_factor: float = 0.975
var friction_factor: float = 0.975


func _init(new_name="ACE", new_id=0, set_cpu=false, forw_turn_dist=250):
	player_name = new_name
	player_id = new_id
	is_cpu = set_cpu
	must_turn_dist_forward = forw_turn_dist
	

func set_player_as_cpu() -> void:
	is_cpu = true

func is_player_cpu() -> bool:
	return is_cpu

func set_player_name(new_name: String) -> void:
	player_name = new_name

func get_player_name() -> String:
	return player_name

func set_player_id(new_id: int) -> void:
	player_id = new_id
	
func get_player_id() -> int:
	return player_id
	
func set_player_vehicle(new_vehicle) -> void:
	selected_vehicle = new_vehicle

func get_player_vehicle() -> int:
	return selected_vehicle
