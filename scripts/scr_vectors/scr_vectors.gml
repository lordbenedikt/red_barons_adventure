// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar

function v_mag(vector2) {
	return sqrt(sqr(abs(vector2[0]))+sqr(abs(vector2[1])))
}

function v_norm(vector2) {
	var mag = v_mag(vector2);
	if  mag==0 {
		return undefined;
	}		
	return [vector2[0]/mag, vector2[1]/mag];
}