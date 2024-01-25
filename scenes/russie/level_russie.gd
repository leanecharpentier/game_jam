extends Control


func _on_button_pressed():
	global.levelChine = true
	get_tree().change_scene_to_file("res://scenes/home.tscn")	
