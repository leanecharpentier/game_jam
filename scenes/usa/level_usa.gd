extends Control


func _on_button_pressed():
	global.levelRussie = true
	get_tree().change_scene_to_file("res://scenes/home.tscn")	
