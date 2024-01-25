extends Control

func _on_hongkong_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_shanghai_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_pekin_pressed():
	get_tree().change_scene_to_file("res://scenes/chine/level_chine.tscn")

func _on_tokyo_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_retour_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")
