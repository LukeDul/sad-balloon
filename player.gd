extends CharacterBody2D


const SPEED = 10.0
const AIR_RES = 0.99
const PUSH_FORCE = 20
const FLOAT_FORCE = 3

func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	velocity.y = -10
	
	var LEFT = Input.is_physical_key_pressed(KEY_A)
	var RIGHT = Input.is_physical_key_pressed(KEY_D)
	var UP = Input.is_physical_key_pressed(KEY_W)
	var DOWN = Input.is_physical_key_pressed(KEY_S)
	
	if RIGHT: velocity.x += SPEED
	if LEFT: velocity.x -= SPEED
	if UP: velocity.y -= SPEED
	if DOWN: velocity.y += SPEED

	velocity.y += -10

	move_and_slide()
	
	# Pop bollon 
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		var collider = collision.get_collider()
		
		if collider is AnimatableBody2D: pop_balloon()
		
func pop_balloon() -> void:
	#play pop animation
	
	#telaport to location
	position = Vector2.ZERO
	
	
	
	
