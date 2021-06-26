extends Button

func get_new_text(a : String) -> String:
	if len(a) > 0:
		return a.substr(0, len(a) - 1)
	return ""

func _on_Button20_pressed():
	get_tree().root.get_child(0).emit_signal("inp_button_pressed", self)
