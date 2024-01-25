extends Control

func _on_france_pressed():
	get_tree().change_scene_to_file("res://scenes/france/level_france.tscn")

func _on_retour_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_luxembourg_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_pays_bas_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_tchequie_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")
