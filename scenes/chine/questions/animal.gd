extends Control


func _on_panda_pressed():
	get_tree().change_scene_to_file("res://scenes/chine/level_chine.tscn")

func _on_tigre_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_ours_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_cheval_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_retour_pressed():
	get_tree().change_scene_to_file("res://scenes/home.tscn")
