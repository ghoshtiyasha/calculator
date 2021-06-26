extends Button

func get_new_text(a : String) -> String:
	return a + text


func _on_Button_pressed():
	get_tree().root.get_child(0).emit_signal("inp_button_pressed", self)
