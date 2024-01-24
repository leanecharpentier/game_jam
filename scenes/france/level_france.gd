extends Control


func _on_button_pressed():
	varGlobal.levelUSA = true
	get_tree().change_scene_to_file("res://scenes/homeScreen.tscn")	
