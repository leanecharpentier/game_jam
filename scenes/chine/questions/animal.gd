extends Control

func _ready():
	global.bonus = false
	$bravo.hide()
	$perdu.hide()
	$music.play()

func _on_panda_pressed():
	global.bonus = true
	$bravo.show()
	$music.stop()
	$winSound.play()

func _on_tigre_pressed():
	global.bonus = false
	$perdu.show()
	$music.stop()
	$looseSound.play()

func _on_ours_pressed():
	global.bonus = false
	$perdu.show()
	$music.stop()
	$looseSound.play()

func _on_cheval_pressed():
	global.bonus = false
	$perdu.show()
	$music.stop()
	$looseSound.play()

func _on_retour_pressed():
	global.bonus = false
	get_tree().change_scene_to_file("res://scenes/home.tscn")

func _on_loose_sound_finished():
	get_tree().change_scene_to_file("res://scenes/chine/level_chine.tscn")

func _on_win_sound_finished():
	get_tree().change_scene_to_file("res://scenes/chine/level_chine.tscn")
