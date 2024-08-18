@tool
extends EditorPlugin


func _enter_tree():
	add_autoload_singleton("Uuid", "res://addons/uuid/uuid.gd")
