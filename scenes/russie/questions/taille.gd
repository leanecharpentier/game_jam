extends Control

func _on_true_pressed():
	get_tree().change_scene_to_file("res://scenes/russie/level_russie.tscn")

func _on_false_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_retour_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")
