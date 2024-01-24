extends Control


func _on_button_pressed():
	global.levelUSA = true
	get_tree().change_scene_to_file("res://scenes/homeScreen.tscn")	
