
// Depth
depth = DEP_TUTORIAL;

// Center on screen
alarm[0] = 2;

// Make text
var _text = [];
var _ind = 0;
_text[_ind++] = "Left-click: Place/reposition node";
_text[_ind++] = "Right-click: Edit node";
_text[_ind++] = "Double left-click: Link";
_text[_ind++] = "Middle-click: Pan view";
_text[_ind++] = "Scroll wheel: Zoom view";
_text[_ind++] = "F5: Copy save data";
_text[_ind++] = "F9: Load save data";
text = "";
for(var i = 0; i < array_length_1d(_text); i++)
	text += _text[i]+"\n";

// Scale of text
scale = 1;