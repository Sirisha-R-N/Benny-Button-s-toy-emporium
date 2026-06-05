extends Button

# This will hold the material name e.g. "Fabric", "Cotton"
var material_name = ""

func setup(name):
	material_name = name
	text = name

func _pressed():
	print("Picked up: " + material_name)
