extends Label

export (String) var sceneName = "Level 2"
var counter  : int = 5
onready var timer = $Timer

func _process(delta):
	self.text = str("next level in " + str(counter))
	
func _ready():
	timer.start()
	
func _on_Timer_timeout():
	if counter == 0:
		get_tree().change_scene(str("res://scenes/" + sceneName + ".tscn"))
	counter -= 1
	timer.start()
