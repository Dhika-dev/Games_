extends CharacterBody2D

const speed = 200
const gravity = 1000
const jump_force = -550

var velocity = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		if is_on_floor() and Input.is_action_pressed("ui_accept"):
			velocity.y += jump_force * delta
