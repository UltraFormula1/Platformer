extends Node

onready var music_player = AudioStreamPlayer.new()

var music_tracks = {
	"main" : "res://Sound Effects/Windmill Isle Day - Sonic Unleashed for Nintendo 64 (Revision).mp3",
	"main2" : "res://Sound Effects/Snowy Mountain (Icecap) - Sonic Adventure [OST].mp3",
	"menu" : "res://Sound Effects/Better Call Saul Main Theme - Super Mario 64 Soundfont.mp3",
	"finish" : "res://Sound Effects/Bad _16-bit Version_.mp3",
}

var sound_effects = {
	"dead" : "res://Sound Effects/Crash Bandicoot Sounds - Woah!.wav",
	"jump" : "res://Sound Effects/Sonic Jump Sound Effect.mp3",
	"checkpoint" : "res://Sound Effects/Sonic Checkpoint SFX.mp3",
	"menu" : "res://Sound Effects/Gran Turismo Sound.wav",
}

var music_db = 1
var sound_db = 1

func change_music_db(val):
		music_db = linear2db(val)
		music_player.volume_db = music_db
	
func change_sound_db(val):
	sound_db = linear2db(val)

func _ready():
	#music.stream = load(music_tracks["main"])
	add_child(music_player)
	music_player.play()
	print(music_player.stream)
	print("playing song")

func change_music(track):
	if track in music_tracks:
		music_player.stream = load(music_tracks[track])
		music_player.play()
	

func play_sound_effect(sfx):
	var sound = AudioStreamPlayer.new()
	sound.stream = load(sound_effects[sfx])
	add_child(sound)
	sound.play()
	sound.volume_db = sound_db
	yield(sound,"finished")
	sound.queue_free()
