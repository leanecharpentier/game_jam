extends CharacterBody2D

const GRAVITY : int = 4800
const JUMP_SPEED : int = -1800
const DUCK_SPEED : int = 1500

func _physics_process(delta):
	
	if global.bonus == true:
		velocity.y += (GRAVITY - 1000) * delta
	else:
		velocity.y += GRAVITY * delta
	if is_on_floor():
		if not get_parent().game_running:
			$AnimatedSprite2D.play("idle")
		else:
			$RunCol.disabled = false
			if Input.is_action_pressed("ui_accept"):
				velocity.y = JUMP_SPEED
				$JumpSound.play()
			elif Input.is_action_pressed("ui_down"):
				$AnimatedSprite2D.play("duck")
				$RunCol.disabled = true
			else:
				$AnimatedSprite2D.play("run")
	else:
		$AnimatedSprite2D.play("jump")
		if Input.is_action_pressed("ui_down"):
			velocity.y = DUCK_SPEED
			$RunCol.disabled = true
	move_and_slide()
