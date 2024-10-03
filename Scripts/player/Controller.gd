extends CharacterBody2D

@export var speed: int = 200

func validateInput() :
	var moveDirection = Input.get_vector("ui_left", "ui_right" , "ui_up", "ui_down")
	velocity = moveDirection * speed

func _physics_process(_delta):
	validateInput()
	move_and_slide()

