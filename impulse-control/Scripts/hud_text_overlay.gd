extends Control

@onready var health_label: Label = %HealthLabel
@onready var speed_label : Label = %SpeedLabel

func _process(_delta : float) -> void:
	update_health()
	update_speed()

func update_health():
	var health        = GameState.player_health
	health_label.text = str("HP: " + str(health))

func update_speed():
	var speed        = GameState.player_speed
	speed_label.text = str("Speed: " + str(int(speed)) + " m/s")
