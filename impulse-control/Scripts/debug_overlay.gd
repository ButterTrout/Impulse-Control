extends Control

const VERSION_SETTING : String = "application/config/version"

@onready var health_label    : Label = %HealthLabel
@onready var version_info : Label = %VersionInfo

func _ready() -> void:
	_add_version_to_info_label()

@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	health_label.set_text("Health: " + str(GameState.player_health))

func _add_version_to_info_label() -> void:
	var version_str : String = ProjectSettings.get_setting(VERSION_SETTING)
	version_info.text += version_str
