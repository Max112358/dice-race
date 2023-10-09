extends Node2D

var oneTex: Texture
var twoTex: Texture
var threeTex: Texture
var fourTex: Texture
var fiveTex: Texture
var sixTex: Texture
var parent_node
var child1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	# Load or create the new texture (replace "res://new_texture.png" with your texture path)
	oneTex = preload("res://dice1.png")
	twoTex = preload("res://dice2.png")
	threeTex = preload("res://dice3.png")
	fourTex = preload("res://dice4.png")
	fiveTex = preload("res://dice5.png")
	sixTex = preload("res://dice6.png")
	parent_node = get_parent()
	# Access Child1 using its name
	child1 = parent_node.get_node("Sprite2D")
	# Get a reference to the Sprite2D node
	
	# Assign the new texture to the Sprite2D node
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _input(event):
	if event.is_action_pressed("ui_select"):
		# The spacebar was pressed
		# Add your code here to perform the desired event
		# For example, you could call a function or emit a signal
		# Generate a random integer between 1 and 100 (inclusive)
		var randomInt = randi() % 6 + 1
		
		
		if randomInt == 1:
			child1.texture = oneTex
		if randomInt == 2:
			child1.texture = twoTex
		if randomInt == 3:
			child1.texture = threeTex
		if randomInt == 4:
			child1.texture = fourTex
		if randomInt == 5:
			child1.texture = fiveTex
		if randomInt == 6:
			child1.texture = sixTex
	
	# Generate a random floating-point number between 0 and 1
	
	# Print the random numbers to the console
		print("Random Integer: ", randomInt)
