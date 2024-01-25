extends Control

func _on_atlantique_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_manche_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_rouge_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_mediterranee_pressed():
	get_tree().change_scene_to_file("res://scenes/france/level_france.tscn")

func _on_retour_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")
