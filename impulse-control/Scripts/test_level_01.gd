class_name TestLevel01
extends BaseLevel

## FUTURE (level): Replace with the actual level implementation.

@onready var player_spawn_marker : PlayerSpawn = $LevelObjects/PlayerSpawn
@onready var player_camera       : Camera3D = $LevelObjects/PlayerCamera

func get_default_player_spawn() -> Vector3:
	return player_spawn_marker.global_position

func get_player_camera() -> Camera3D:
	return player_camera
