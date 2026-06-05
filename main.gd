extends Node2D

# The total time the player has
var time_remaining = 60.0

# We'll fill this in once we connect the label
@onready var timer_label = $TimerLabel

func _process(delta):
	# delta is the time since the last frame (a tiny fraction of a second)
	# We subtract it each frame so the timer counts down in real time
	time_remaining -= delta
	
	# Update the label to show the current time as a whole number
	timer_label.text = str(ceil(time_remaining))
	
	# Check if time has run out
	if time_remaining <= 0:
		time_remaining = 0
		timer_label.text = "0"
		game_over()

func game_over():
	print("Game Over")
