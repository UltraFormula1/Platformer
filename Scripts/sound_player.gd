extends Node

onready var music = AudioStreamPlayer.new()

var music_tracks = {
	"main" : "res://Sound Effects/Better Call Mario (Extended).mp3",
	"menu" : "res://Sound Effects/Better Call Mario (Extended).mp3",
	"finish" : 
}

var sound_effects = {
	"dead" : "res://Sound Effects/Engineer_negativevocalization03.wav",
	"jump" : "res://Sound Effects/Sonic Jump Sound Effect.mp3",
	"checkpoint" : 
}

var music_db = 1
var sound_db = 1

func change_music_db(val):
	music_db = linear2db(val)
	
func change_sound_db(val):
	sound_db = linear2db(val)

func _ready():
	music.stream = load(music_tracks["main"])
	add_child(music)
	music.play()
	print(music.stream)
	print("playing song")

func play_sound_effect(sfx):
	var sound = AudioStreamPlayer.new()
	sound.stream = load(sound_effects[sfx])
	add_child(sound)
	sound.play()
	yield(sound,"finished")
	sound.queue_free()
