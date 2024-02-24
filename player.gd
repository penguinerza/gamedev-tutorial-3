extends KinematicBody2D

export (int) var speed = 300
var maxspeed = 600
var dashing = false
var speedMultiplier = 1
const GRAVITY = 1000

onready var _animated_sprite = $AnimatedSprite

var velocity = Vector2()
var did_double_jump = false

func _process(_delta):
	if velocity.x > 0:
		_animated_sprite.flip_h = false
	elif velocity.x < 0:
		_animated_sprite.flip_h = true
			
	if !is_on_floor():
		if velocity.y > 0:
			_animated_sprite.play("fall")
		else:
			_animated_sprite.play("jump")
			
	else:
		if velocity.x != 0:
			_animated_sprite.play("run")
		else:
			_animated_sprite.play("idle")
			dashing = false
		
		if Input.is_action_pressed("down"):
			_animated_sprite.play("crouch")
		

func jump():
	if !is_on_floor():
		if did_double_jump:
			return
		did_double_jump = true
	velocity.y = -500

func _physics_process(delta):
	if is_on_floor():
		did_double_jump = false
	velocity.y += delta * GRAVITY
	
	var horizontal = 0
	if Input.is_action_pressed("right"):
		horizontal = speed
	elif Input.is_action_pressed("left"):
		horizontal = -speed
	else:
		horizontal = 0

	if Input.is_action_pressed("down") && is_on_floor():
		speedMultiplier = .5
	else:
		speedMultiplier = 1
		
	if Input.is_action_just_pressed("up"):
		jump()
	
	velocity.x = horizontal * speedMultiplier
	velocity = move_and_slide(velocity, Vector2.UP, true)

