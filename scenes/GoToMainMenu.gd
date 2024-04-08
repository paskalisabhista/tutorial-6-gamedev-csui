extends LinkButton

export(String) var scene_to_load

func _on_GoToMainMenu_pressed():
	get_tree().change_scene(str("res://scenes/" + scene_to_load + ".tscn"))
