extends KinematicBody2D

const SPEED = 250
const FLOOR = Vector2(0, -1)
var velocity = Vector2()


func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		$AnimatedSprite.play("right")
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$AnimatedSprite.play("left")
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
		$AnimatedSprite.play("up")
	elif Input.is_action_pressed("ui_down"):
		velocity.y = SPEED
		$AnimatedSprite.play("down")
	else:
		velocity.x = 0
		velocity.y = 0
		$AnimatedSprite.play("notmoving")
	velocity = move_and_slide(velocity)