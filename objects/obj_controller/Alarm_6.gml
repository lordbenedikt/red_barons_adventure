/// @description Lightning start

alarm[7] = 50;
lightning_is_hitting = true;

lightning_index = irandom(array_length(lightning_sprites)-1);

thunder_sounds = [snd_thunder,snd_thunder_2,snd_thunder_3];
var snd = thunder_sounds[irandom(array_length(thunder_sounds)-1)];
lightning_sound = audio_play_sound(snd,0,0);