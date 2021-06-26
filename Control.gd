extends Control
signal inp_button_pressed(node)


func _on_Control_inp_button_pressed(node):
	$VBoxContainer/TextEdit.text = node.get_new_text($VBoxContainer/TextEdit.text)
