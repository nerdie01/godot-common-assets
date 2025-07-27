class_name SceneMenu extends BoxContainer

@export var scene_menu_button: PackedScene 
@export var scene_folder_path = "res://scenes/playable"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var dir: DirAccess = DirAccess.open(scene_folder_path)
	for file: String in dir.get_files():
		var scene: PackedScene = load(dir.get_current_dir() + "/" + file) as PackedScene
		var button: SceneMenuButton = scene_menu_button.instantiate() as SceneMenuButton
		button.scene = scene
		add_child(button)
