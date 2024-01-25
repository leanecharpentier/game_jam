extends CanvasLayer

signal on_restart

# Called when the node enters the scene tree for the first time.
func _ready():
	$Button.connect("pressed", _on_button_button_up)
	print("tooEZQN")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_button_button_up():
	print("button prssed") # Replace with function body.
