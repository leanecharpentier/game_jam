extends Control


func _on_button_pressed():
	global.levelEgypte = true
	get_tree().change_scene_to_file("res://scenes/home.tscn")	
