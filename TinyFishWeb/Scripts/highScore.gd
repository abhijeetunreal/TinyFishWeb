extends Node
const SAVEFILE = "user://savefile.save"

var Highest_record = 0

func _ready():
	load_highScore()
	
func highScore():
	var file = FileAccess.open(SAVEFILE, FileAccess.WRITE_READ)
	file.store_32(Highest_record)
	
func load_highScore():
	var file = FileAccess.open(SAVEFILE, FileAccess.READ)
	if FileAccess.file_exists(SAVEFILE):
		Highest_record = file.get_32()
