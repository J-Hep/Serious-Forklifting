extends CharacterBody3D

var speed = 2
var targetVelocity = Vector3.ZERO
var dir = Vector3.ZERO

func _ready():
	pass

func _process(delta):
	dir = Vector3.ZERO
	if Input.is_action_pressed("fork_lift_forward"):
		dir.z -= 1
	if Input.is_action_pressed("fork_lift_backward"):
		dir.z += 1

func _physics_process(delta):
	targetVelocity.x = dir.x * speed
	targetVelocity.z = dir.z * speed
	
	velocity = targetVelocity
	move_and_slide()
