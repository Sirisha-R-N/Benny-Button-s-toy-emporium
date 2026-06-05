extends VBoxContainer

var materials = ["Fabric", "Cotton", "Thread", "Buttons"]

const MaterialButton = preload("res://material_button.tscn")

func _ready():
	for material in materials:
		var button = MaterialButton.instantiate()
		add_child(button)
		button.setup(material)
