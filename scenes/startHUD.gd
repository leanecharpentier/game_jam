extends CanvasLayer

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_quit_pressed():
	get_tree().quit()