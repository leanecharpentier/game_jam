extends Control

func _ready():
	$quitRegle.hide()
	$regles.hide()
	$lockUsa.hide()
	$lockRussie.hide()
	$lockChine.hide()
	$lockEgypte.hide()
	if global.levelUSA == true:
		$lockUsa.show()
	if global.levelRussie == true:
		$lockRussie.show()
	if global.levelChine == true:
		$lockChine.show()
	if global.levelEgypte == true:
		$lockEgypte.show()

func _on_france_pressed():
	var questions = ["res://scenes/france/questions/capitale.tscn",
	"res://scenes/france/questions/drapeau.tscn",
	"res://scenes/france/questions/fleuve.tscn",
	"res://scenes/france/questions/mer.tscn"]
	var nb = randi() % 4
	get_tree().change_scene_to_file(questions[nb])

func _on_usa_pressed():
	if global.levelUSA == true :
		var questions = ["res://scenes/usa/questions/capitale.tscn",
		"res://scenes/usa/questions/drapeau.tscn",
		"res://scenes/usa/questions/etats.tscn"]
		var nb = randi() % 3
		get_tree().change_scene_to_file(questions[nb])

func _on_russie_pressed():
	if global.levelRussie == true :
		var questions = ["res://scenes/russie/questions/capitale.tscn",
		"res://scenes/russie/questions/drapeau.tscn",
		"res://scenes/russie/questions/taille.tscn"]
		var nb = randi() % 3
		get_tree().change_scene_to_file(questions[nb])

func _on_chine_pressed():
	if global.levelChine == true :
		var questions = ["res://scenes/chine/questions/capitale.tscn",
		"res://scenes/chine/questions/drapeau.tscn",
		"res://scenes/chine/questions/animal.tscn"]
		var nb = randi() % 3
		get_tree().change_scene_to_file(questions[nb])

func _on_egypte_pressed():
	if global.levelEgypte == true :
		var questions = ["res://scenes/egypte/questions/capitale.tscn",
		"res://scenes/egypte/questions/drapeau.tscn",
		"res://scenes/egypte/questions/fleuve.tscn"]
		var nb = randi() % 3
		get_tree().change_scene_to_file(questions[nb])

func _on_quit_pressed():
	get_tree().quit()

func _on_regles_pressed():
	$quitRegle.show()
	$regles.show()

func _on_quit_regle_pressed():
	$regles.hide()
	$quitRegle.hide()
