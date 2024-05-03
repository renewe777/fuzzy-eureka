extends CharacterBody2D

const SPEED = 200

func _physics_process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("right"):
		velocity.x += SPEED
	if Input.is_action_pressed("left"):
		velocity.x -= SPEED
	if Input.is_action_pressed("up"):
		velocity.y -= SPEED
	if Input.is_action_pressed("down"):
		velocity.y += SPEED
	velocity = velocity.normalized() * SPEED
	move_and_slide()
