class_name SceneMenuButton extends Button

@export var scene: PackedScene

func _enter_tree() -> void:
	button_up.connect(_on_button_up)

func _ready() -> void:
	text = scene.resource_path

func _on_button_up() -> void:
	get_tree().change_scene_to_packed(scene)
