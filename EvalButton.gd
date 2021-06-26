extends Button
onready var expression = Expression.new()


func get_new_text(a : String) -> String:
	if a.trim_prefix(' ').trim_suffix(' ') == "":
		return "0"
	
	var error = expression.parse(a, [])
	if error != OK:
		print(expression.get_error_text())
		return "Error"
	var result = expression.execute([], null, true)
	if not expression.has_execute_failed():
		return str(result)
	return "Error"


func _on_Button11_pressed():
	get_tree().root.get_child(0).emit_signal("inp_button_pressed", self)
