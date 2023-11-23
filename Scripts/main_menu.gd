extends Control


var debounce = true;
@onready var uiImages = [$Incident1,$Incident2,$Incident3,$Incident4]

# Called when the node enters the scene tree for the first time.
func _ready():
	
	uiImages[randi_range(0,uiImages.size()-1)].visible = true
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if (debounce == true):
		debounce = false
		await get_tree().create_timer(1.0).timeout
		print("Timer done")
		#cycle_image()
		debounce = true
	
	
	
	pass


func _on_play_button_pressed():
	print("Begin")
	var sceneResource = load("res://game_world.tscn")
	
	get_tree().change_scene_to_file("res://game_world.tscn")
	
	pass # Replace with function body.

func cycle_image():
	
	
	for i in 255:
		await get_tree().create_timer(0.1).timeout
		print(i)
		uiImages[0].modulate = Color(0,0,0,i)
	
