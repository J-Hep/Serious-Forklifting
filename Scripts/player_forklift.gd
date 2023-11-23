extends Node3D

var newMaterial = StandardMaterial3D.new() #Make a new Material


# Called when the node enters the scene tree for the first time.
func _ready():
	
	$"MeshInstance3D".material_override = newMaterial 
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_pressed("fork_lift_up"):
		print("Up")
		newMaterial.albedo_color = Color.html("#ff0000")
	
	if Input.is_action_pressed("fork_lift_down"):
		print("Down")
		newMaterial.albedo_color = Color.html("#00ff00")
	
	pass
