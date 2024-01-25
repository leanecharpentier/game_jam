extends Control

func _on_washington_pressed():
	get_tree().change_scene_to_file("res://scenes/usa/level_usa.tscn")

func _on_atlanta_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_newyork_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_losangeles_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_retour_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")
