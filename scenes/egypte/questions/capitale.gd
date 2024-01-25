extends Control


func _on_alexandrie_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_gizeh_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_suez_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_lecaire_pressed():
	get_tree().change_scene_to_file("res://scenes/egypte/level_egypte.tscn")

func _on_retour_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")
