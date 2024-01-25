extends Control

func _on_moscou_pressed():
	get_tree().change_scene_to_file("res://scenes/russie/level_russie.tscn")

func _on_petersbourg_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_tallinn_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_minsk_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_retour_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")
