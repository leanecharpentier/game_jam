extends Node

#preload obstacles
var stump_scene = preload("res://scenes/chine/bird.tscn")
var rock_scene = preload("res://scenes/chine/rock.tscn")
var barrel_scene = preload("res://scenes/chine/barrel.tscn")
var bird_scene = preload("res://scenes/chine/bird.tscn")
var obstacles_types := [stump_scene, rock_scene, barrel_scene]
var obstacles : Array
var bird_heights := [235]

#game variables
const DINO_START_POS := Vector2i(150, 485)
const CAM_START_POS := Vector2i(960, 580)
const SCORE_MODIFIER : int = 10
var difficulty
const MAX_DIFFICULTY : int = 2
var score : int
var high_score : int
var speed : float
const START_SPEED : float = 15.0
const SPEED_MODIFIER : int = 3000
const MAX_SPEED : int = 30
var screen_size : Vector2i
var ground_height : int
var game_running : bool
var last_obs

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_window().size
	ground_height = $Ground.get_node("Sprite2D").texture.get_height()
	#$GameOver.get_node("Button").pressed.connect(new_game)
	new_game()

func new_game():
	#reset variables
	score = 0
	show_score()
	game_running = false
	get_tree().paused = false
	difficulty = 0
	
	#delete all obstacles
	for obs in obstacles:
		obs.queue_free()
	obstacles.clear()
	
	#reset the nodes
	$Dino.position = DINO_START_POS
	$Dino.velocity = Vector2i(0, 0)
	$Camera2D.position = CAM_START_POS
	$Ground.position = Vector2i(0, 430)
	
	#reset hud and hide game over button
	$HUD.get_node("StartLabel").show()
	$GameOver.hide()
	
	#hide win text
	$Win.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if game_running:
		#speed up and adjust difficulty
		speed = START_SPEED + score / SPEED_MODIFIER
		if speed > MAX_SPEED:
			speed = MAX_SPEED
		print(speed)
		adjust_difficulty()
			
		#generate obstacles
		generate_obs()
		
		#move dino and camera
		$Dino.position.x += speed
		$Camera2D.position.x += speed

		#update score
		score += speed
		show_score()
		
		#show win text
		win()

		#update ground position
		if $Camera2D.position.x - $Ground.position.x > screen_size.x * 1.5:
			$Ground.position.x += screen_size.x
		
		#remove obstacles off teh screen
		for obs in obstacles:
			if obs.position.x < ($Camera2D.position.x - screen_size.x):
				remove_obs(obs)
	else:
		if Input.is_action_pressed("ui_accept"):
			game_running = true
			$HUD.get_node("StartLabel").hide()

func generate_obs():
#generate ground obstacles
	if obstacles.is_empty() or (last_obs and last_obs.position.x < score + randi_range(300, 400)):
		var obs_type = obstacles_types[randi() % obstacles_types.size()]
		var obs
		var max_obs = difficulty + 1
		for i in range(randi() % max_obs + 1):
			obs = obs_type.instantiate()
			var sprite_node = obs.get_node("Sprite2D")

			if sprite_node:
				var obs_height = sprite_node.texture.get_height()
				var obs_scale = sprite_node.scale
				var obs_x : int = screen_size.x + score + 100 + (i * 100)
				var obs_y : int = screen_size.y - ground_height - (obs_height * obs_scale.y / 2) + 30
				last_obs = obs
				add_obs(obs, obs_x, obs_y)
			else:
				# Gérez le cas où le nœud "Sprite2D" n'est pas trouvé dans l'objet obs
				print("Erreur: Le nœud 'Sprite2D' n'a pas été trouvé dans l'objet obs.")

		#random birds spawn
		if difficulty == MAX_DIFFICULTY:
			if (randi() % 2) == 0:
				#generate birds obstacles
				obs = bird_scene.instantiate()
				var obs_x : int = screen_size.x + score + 100
				var obs_y : int = bird_heights[randi() % bird_heights.size()]
				add_obs(obs, obs_x, obs_y)
		
func add_obs(obs, x, y):
	obs.position = Vector2i(x, y)
	obs.body_entered.connect(hit_obs)
	add_child(obs)
	obstacles.append(obs)
	
func remove_obs(obs):
	obs.queue_free()
	obstacles.erase(obs)
	
func hit_obs(body):
	if body.name == "Dino":
		new_game()
 
func show_score():
	$HUD.get_node("ScoreLabel").text = "SCORE: " + str(score / SCORE_MODIFIER)

func check_high_score():
	if score > high_score:
		high_score = score
		$HUD.get_node("HighLabel").text = "HIGH SCORE: " + str(high_score / SCORE_MODIFIER)

func adjust_difficulty():
	difficulty = score / SPEED_MODIFIER
	if difficulty > MAX_DIFFICULTY:
		difficulty = MAX_DIFFICULTY

func game_over():
	check_high_score()
	get_tree().paused = true
	game_running = false
	#$GameOver.show()
	
func win():
	if score / SCORE_MODIFIER >= 2500:
		check_high_score()
		get_tree().paused = true
		game_running = false
		global.levelEgypte = true
		$Win.show()
		$Win.get_node("WinSound").play()
		await get_tree().create_timer(2.0).timeout # waits for 1 second
		get_tree().change_scene_to_file("res://scenes/home.tscn")

