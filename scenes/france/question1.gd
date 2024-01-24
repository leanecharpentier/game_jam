extends Control

func _on_paris_pressed():
	get_tree().change_scene_to_file("res://scenes/france/level_france.tscn")

func _on_marseille_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_angers_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_lyon_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")
