@tool
extends EditorPlugin

# A class member to hold the dock during the plugin life cycle.
var plugin_control

func _enter_tree():
	plugin_control = preload("res://addons/printcrash/PluginControl.tscn").instantiate()
	get_editor_interface().get_editor_main_screen().add_child(plugin_control)
	plugin_control.hide()

func _exit_tree():
	if plugin_control:
		print("freeing plugin control") # if this line is removed, the segfault no longer happens
		plugin_control.free()
		plugin_control = null

func _has_main_screen():
	return true

func _make_visible(visible):
	if plugin_control:
		plugin_control.visible = visible

func _get_plugin_name():
	return "Print Crash"
