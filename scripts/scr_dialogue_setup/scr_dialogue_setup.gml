global.player_portrait = new Portrait(spr_portrait_player, spr_portrait_examplechar_mouth, 26, 44, spr_portrait_examplechar_idle);

/// @param {Struct.Portrait} _portrait 	
function setup_speaker(_portrait, _voice, _font, _name) {
	myPortrait			= _portrait.sprite_start;
	myVoice				= snd_voice2;
	myFont				= fnt_dialogue;
	myName				= "Green";

	myPortraitTalk_x	= _portrait.talk_x;
	myPortraitTalk_y	= _portrait.talk_y;
	myPortraitTalk		= _portrait.sprite_talk;

	myPortraitIdle		= _portrait.sprite_idle;
}

/// @param {Asset.GMSprite} _sprite_start sprite shown while talking
/// @param {Asset.GMSprite} _sprite_talk sprite shown while talking
/// @param {Real} _talk_x x-position of the overlay talk sprite
/// @param {Real} _talk_y y-position of the overlay talk sprite
/// @param {Asset.GMSprite} _sprite_idle sprite shown after done talking
function Portrait(_sprite_start, _sprite_talk, _talk_x, _talk_y, _sprite_idle) constructor {
	sprite_start	= _sprite_start;
	sprite_talk		= _sprite_talk;
	talk_x			= _talk_x;
	talk_y			= _talk_y;
	sprite_idle		= _sprite_idle;
}
