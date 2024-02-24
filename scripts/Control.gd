extends Control

func _ready():
	pass

func print_bool(b):
	if b:
		return "[color=green]True[/color]"
	else:
		return "[color=red]False[/color]"

func _on_player_status(is_running, did_double_jump, is_crouching):
	$RichTextLabel.bbcode_text  = "is_running: " + print_bool(is_running) \
				+ "\ndid_double_jump: " + print_bool(did_double_jump)\
				+ "\nis_crouching: " + print_bool(is_crouching)
