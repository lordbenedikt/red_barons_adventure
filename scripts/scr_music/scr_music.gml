// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar

global.music_volume = 1;

enum BGMusicDefaultGain {
	Fliegermarsch,
	PreussensGloria,
	Epic,
	TheRedBaron,
	Defeat,
	Victory,
	MainMenu
}
function get_default_gain(music_index) {
	switch (music_index) {
		case BGMusicDefaultGain.Fliegermarsch: return 0.5 * global.music_volume;
		case BGMusicDefaultGain.PreussensGloria: return 1 * global.music_volume;
		case BGMusicDefaultGain.Epic: return 0.8 * global.music_volume;
		case BGMusicDefaultGain.TheRedBaron: return 1.5 * global.music_volume;
		case BGMusicDefaultGain.Defeat: return 0.8 * global.music_volume;
		case BGMusicDefaultGain.Victory: return 0.8 * global.music_volume;
		case BGMusicDefaultGain.MainMenu: return 1 * global.music_volume;
		default: return 0.25;
	}
}
function get_bg_music_default_gain(level_index) {
	switch (level_index) {
		case room_sunset: return get_default_gain(BGMusicDefaultGain.Fliegermarsch);
		case room_grasslands: return get_default_gain(BGMusicDefaultGain.Epic);
		case room_mountains: return get_default_gain(BGMusicDefaultGain.TheRedBaron);
		case room_game_over: return get_default_gain(BGMusicDefaultGain.Defeat);
		case room_victory: return get_default_gain(BGMusicDefaultGain.Victory);
		case room_main_menu: return get_default_gain(BGMusicDefaultGain.MainMenu);
		default: return 0.25;
	}
}

function play_bg_music() {
	if room == room_main_menu {
		return audio_play_sound(snd_red_baron_main_menu_music,0,1,
		music_on ? get_default_gain(BGMusicDefaultGain.MainMenu) : 0);
	} else if room == room_sunset {
		return audio_play_sound(snd_fliegermarsch,0,1,
		music_on ? get_default_gain(BGMusicDefaultGain.Fliegermarsch) : 0);
	} else if room == room_grasslands {
		return audio_play_sound(snd_music_epic,0,1,
		music_on ? get_default_gain(BGMusicDefaultGain.Epic) : 0);
	} else if room == room_mountains {
		return audio_play_sound(snd_the_red_baron,0,1,
		music_on ? get_default_gain(BGMusicDefaultGain.TheRedBaron) : 0);
	} else if room == room_game_over {
		return audio_play_sound(snd_music_defeat,0,0,
		music_on ? get_default_gain(BGMusicDefaultGain.Defeat) : 0);
	} else if room == room_victory {
		return audio_play_sound(snd_victory,0,0,
		music_on ? get_default_gain(BGMusicDefaultGain.Victory) : 0);
	}
}
