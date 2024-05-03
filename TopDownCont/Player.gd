extends CharacterBody2D

const SPEED = 200
@onready var animation = $AnimatedSprite2D

func _physics_process(delta):
	animation.play("idle")
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
	
