event_inherited(); //so it will inherit from par_speaker


//-------DIALOGUE STUFF
var _portrait = new Portrait(spr_portrait_examplechar, spr_portrait_examplechar_mouth, 26, 44, spr_portrait_examplechar_idle);
setup_speaker(_portrait, snd_voice1, fnt_dialogue, "Blue");

//-------OTHER

choice_variable		= -1;	//the variable we change depending on the player's choice in dialogue