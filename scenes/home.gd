extends Control

func _ready():
	$usa.hide()
	$russie.hide()
	$chine.hide()
	$egypte.hide()
	if global.levelUSA == true:
		$usa.show()
	if global.levelRussie == true:
		$russie.show()
	if global.levelChine == true:
		$chine.show()
	if global.levelEgypte == true:
		$egypte.show()

func _on_france_pressed():
	var questions = ["res://scenes/questionsFrance1.tscn", "res://scenes/questionsFrance2.tscn", "res://scenes/questionsFrance3.tscn"]
	var nb = randi() % 3
	get_tree().change_scene_to_file(questions[nb])

func _on_usa_pressed():
	get_tree().change_scene_to_file("res://scenes/questionsUSA.tscn")

func _on_russie_pressed():
	get_tree().change_scene_to_file("res://scenes/questions.tscn")

func _on_chine_pressed():
	get_tree().change_scene_to_file("res://scenes/questions.tscn")

func _on_egypte_pressed():
	get_tree().change_scene_to_file("res://scenes/questions.tscn")


func _on_quit_pressed():
	get_tree().quit()
