extends CharacterBody2D


const SPEED: float = 150.0

func _physics_process(delta):
	var input_direction = Vector2(
		Input.get_action_strength('right') - Input.get_action_strength('left'),
		Input.get_action_strength('down') - Input.get_action_strength('up')
	)
	
	
	velocity = input_direction * SPEED
	
	move_and_slide()
	
